<#--
 ~ Copyright 2024-2025 Mayeku Khisa
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
    "@radix-ui/react-dropdown-menu": "^2.1.4",
    "@radix-ui/react-slot": "^1.1.1",
    "class-variance-authority": "^0.7.1",
    "clsx": "^2.1.1",
    "lucide-react": "^0.471.1",
    "react": "^19.0.0",
    "react-dom": "^19.0.0",
    "tailwind-merge": "^2.6.0",
    "tailwindcss-animate": "^1.0.7"
  },
  "devDependencies": {
    "@eslint/eslintrc": "^3.2.0",
    "@eslint/js": "^9.18.0",
    "@types/chrome": "^0.0.296",
    "@types/react": "^19.0.7",
    "@types/react-dom": "^19.0.3",
    "@typescript-eslint/eslint-plugin": "^8.20.0",
    "@typescript-eslint/parser": "^8.20.0",
    "@wxt-dev/module-react": "^1.1.3",
    "autoprefixer": "^10.4.20",
    "codecap": "^0.3.1",
    "eslint": "^9.18.0",
    "eslint-config-prettier": "^10.0.1",
    "eslint-plugin-prettier": "^5.2.1",
    "eslint-plugin-simple-import-sort": "^12.1.1",
    "eslint-plugin-tailwindcss": "^3.17.5",
    "postcss": "^8.5.1",
    "prettier": "^3.4.2",
    "prettier-plugin-tailwindcss": "^0.6.9",
    "tailwindcss": "^3.4.17",
    "typescript": "^5.7.3",
    "wxt": "^0.19.24"
  }
}
