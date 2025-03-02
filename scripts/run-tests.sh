#!/usr/bin/env bash

# Copyright 2024-2025 Mayeku Khisa
#
# Use of this source code is governed by a MIT license as appearing in the
# LICENSE file included in the root of this source tree.
set -e

function run_test() {
  local template=$1
  local template_path=$2
  local project_dir=$3

  scaffold create --template="$template" "$project_dir" >/dev/null 2>&1 || {
    echo -e "\e[31m[x] $template (Failed to create project)\e[0m"
    echo "$template" >>"$tmp_dir/failed-tests"
    return
  }

  local expected_structure_file="$template_path/structure.txt"
  if [[ ! -f "$expected_structure_file" ]]; then
    echo -e "\e[31m[x] $template (Missing structure.txt file)\e[0m"
    echo "$template" >>"$tmp_dir/failed-tests"
    return
  fi

  local actual_structure=$(cd "$project_dir" && find . -type f -exec stat -c "%a %n" {} \; | LC_ALL=C sort)
  local expected_structure=$(cat "$expected_structure_file")
  local diff_output=$(diff <(echo "$actual_structure") <(echo "$expected_structure") 2>&1) || true

  if [[ -n "$diff_output" ]]; then
    echo -e "\e[31m[x] $template\e[0m"

    {
      echo -e "\e[31m[x] $template\e[0m"
      echo "$diff_output" | sed 's/^/    /'
      echo "----------------------------------------"
    } >>"$tmp_dir/failure-details"

    echo "$template" >>"$tmp_dir/failed-tests"
  else
    echo -e "\e[32m[+] $template\e[0m"
  fi
}

function print_header() {
  echo -e "\e[1m$1:\e[0m"
}

function main() {
  if ! command -v scaffold &>/dev/null; then
    echo "Error: scaffold command not found in PATH"
    exit 1
  fi

  tmp_dir=$(mktemp -d)
  trap "rm -rf $tmp_dir" EXIT

  local catalog_file="catalog.json"
  if [[ ! -f "$catalog_file" ]]; then
    echo "Error: catalog.json not found"
    exit 1
  fi

  templates_json=$(cat "$catalog_file" | grep -o '"name": "[^"]*"' | sed 's/"name": "\(.*\)"/\1/')
  template_paths_json=$(cat "$catalog_file" | grep -o '"path": "[^"]*"' | sed 's/"path": "\(.*\)"/\1/')

  mapfile -t template_names <<<"$templates_json"
  mapfile -t template_paths <<<"$template_paths_json"

  pids=()

  echo "Validating project structures..."
  for i in "${!template_names[@]}"; do
    template="${template_names[$i]}"
    template_path="${template_paths[$i]}"
    run_test "$template" "$template_path" "$tmp_dir/$template" &
    pids+=($!)
  done

  for pid in "${pids[@]}"; do
    wait $pid
  done
  echo

  if [[ -f "$tmp_dir/failure-details" ]]; then
    print_header "Structure Mismatch (Actual vs Expected)"
    cat "$tmp_dir/failure-details"
    echo
  fi

  total_tests=${#template_names[@]}
  failed_tests=0
  if [[ -f "$tmp_dir/failed-tests" ]]; then
    failed_tests=$(wc -l <"$tmp_dir/failed-tests")
  fi

  print_header "Test Summary"
  echo "Total  : $total_tests"
  echo "Passed : $((total_tests - failed_tests))"
  echo "Failed : $failed_tests"

  exit $failed_tests
}

main
