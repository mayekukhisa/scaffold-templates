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
    "lint": "eslint src/ && codecap --check && prettier --check \"**/*.{css,html,json,md,yml}\" \"*.mjs\"",
    "format": "eslint src/ --fix && codecap --fix && prettier --write \"**/*.{css,html,json,md,yml}\" \"*.mjs\""
  },
  "dependencies": {
    "@radix-ui/react-dropdown-menu": "^2.1.6",
    "@radix-ui/react-slot": "^1.1.2",
    "class-variance-authority": "^0.7.1",
    "clsx": "^2.1.1",
    "lucide-react": "^0.483.0",
    "react": "^19.0.0",
    "react-dom": "^19.0.0",
    "tailwind-merge": "^3.0.2",
    "tw-animate-css": "^1.2.4"
  },
  "devDependencies": {
    "@eslint/js": "^9.23.0",
    "@tailwindcss/postcss": "^4.0.15",
    "@types/chrome": "^0.0.310",
    "@types/react": "^19.0.12",
    "@types/react-dom": "^19.0.4",
    "@wxt-dev/module-react": "^1.1.3",
    "codecap": "^0.3.1",
    "eslint": "^9.23.0",
    "eslint-config-prettier": "^10.1.1",
    "eslint-plugin-prettier": "^5.2.3",
    "eslint-plugin-simple-import-sort": "^12.1.1",
    "prettier": "^3.5.3",
    "prettier-plugin-tailwindcss": "^0.6.11",
    "tailwindcss": "^4.0.15",
    "typescript": "^5.8.2",
    "typescript-eslint": "^8.27.0",
    "wxt": "^0.19.29"
  }
}
