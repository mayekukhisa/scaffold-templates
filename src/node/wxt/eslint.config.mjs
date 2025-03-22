import eslint from "@eslint/js"
import prettierRecommended from "eslint-plugin-prettier/recommended"
import simpleImportSort from "eslint-plugin-simple-import-sort"
import tseslint from "typescript-eslint"

export default tseslint.config(eslint.configs.recommended, tseslint.configs.recommended, prettierRecommended, {
  plugins: {
    "simple-import-sort": simpleImportSort,
  },
  rules: {
    "no-restricted-imports": [
      "error",
      {
        patterns: ["./*", "../*"],
      },
    ],
    "simple-import-sort/imports": "error",
    "simple-import-sort/exports": "error",
  },
})
