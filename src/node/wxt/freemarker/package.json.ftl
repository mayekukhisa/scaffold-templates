<#--
 ~ Copyright 2024 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
{
  "name": "${projectName?lower_case?replace('[ _]', '-', 'r')}",
  "description": "${projectName} description",
  "private": true,
  "version": "0.1.0",
  "type": "module",
  "scripts": {
    "postinstall": "wxt prepare",
    "dev": "wxt",
    "dev:firefox": "wxt -b firefox",
    "build": "wxt build",
    "build:firefox": "wxt build -b firefox",
    "zip": "wxt zip",
    "zip:firefox": "wxt zip -b firefox",
    "compile": "tsc --noEmit",
    "check": "eslint src/ && codecap --check && prettier --check \"**/*.{css,html,json,md,yml}\" \"*.{mjs,ts}\"",
    "fix": "eslint src/ --fix && codecap --fix && prettier --write \"**/*.{css,html,json,md,yml}\" \"*.{mjs,ts}\""
  },
  "dependencies": {
    "react": "^18.3.1",
    "react-dom": "^18.3.1"
  },
  "devDependencies": {
    "@eslint/eslintrc": "^3.1.0",
    "@eslint/js": "^9.14.0",
    "@types/chrome": "^0.0.280",
    "@types/react": "^18.3.12",
    "@types/react-dom": "^18.3.1",
    "@typescript-eslint/eslint-plugin": "^8.13.0",
    "@typescript-eslint/parser": "^8.13.0",
    "@wxt-dev/module-react": "^1.1.1",
    "autoprefixer": "^10.4.20",
    "codecap": "^0.3.1",
    "eslint": "^9.14.0",
    "eslint-config-prettier": "^9.1.0",
    "eslint-plugin-prettier": "^5.2.1",
    "eslint-plugin-simple-import-sort": "^12.1.1",
    "eslint-plugin-tailwindcss": "^3.17.5",
    "postcss": "^8.4.47",
    "prettier": "^3.3.3",
    "prettier-plugin-tailwindcss": "^0.6.8",
    "tailwindcss": "^3.4.14",
    "typescript": "^5.6.3",
    "wxt": "^0.19.13"
  }
}
