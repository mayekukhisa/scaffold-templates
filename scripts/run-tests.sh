#!/usr/bin/env bash

# Copyright 2024 Mayeku Khisa
#
# Use of this source code is governed by a MIT license as appearing in the
# LICENSE file included in the root of this source tree.
set -e

function run_test() {
   local template=$1
   local project_dir=$2

   error_output=$(scaffold create --template="$template" "$project_dir" --validate 2>&1 >/dev/null) || true

   if [[ -n "$error_output" ]]; then
      echo -e "\e[31m[x] $template\e[0m"

      {
         echo -e "\e[31m[x] $template\e[0m"
         extract_diff_message "$error_output" | sed 's/^/    /'
         echo "----------------------------------------"
      } >>"$tmp_dir/failure-details"

      echo "$template" >>"$tmp_dir/failed-tests"
   else
      echo -e "\e[32m[+] $template\e[0m"
   fi
}

function extract_diff_message() {
   local error_output=$1
   echo "$error_output" | sed -n '/Error: Actual and expected structures mismatch,/,/^$/p' | tail -n +2
}

function print_header() {
   echo -e "\e[1m$1:\e[0m"
}

function main() {
   tmp_dir=$(mktemp -d)
   trap "rm -rf $tmp_dir" EXIT

   templates=$(scaffold --list-templates | tr -d "\r")

   pids=()

   echo "Validating project structures..."
   for template in $templates; do
      run_test $template "$tmp_dir/$template" &
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

   total_tests=$(echo "$templates" | wc -w)
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
