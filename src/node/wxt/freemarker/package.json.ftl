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
      "check": "eslint --ext .ts,.tsx src/ && codecap --check && prettier --check \"**/*.{css,html,json,md,mjs,yml}\" tailwind.config.ts",
      "fix": "eslint --ext .ts,.tsx src/ --fix && codecap --fix && prettier --write \"**/*.{css,html,json,md,mjs,yml}\" tailwind.config.ts"
   },
   "dependencies": {
      "react": "^18.3.1",
      "react-dom": "^18.3.1"
   },
   "devDependencies": {
      "@types/react": "^18.3.8",
      "@types/react-dom": "^18.3.0",
      "@typescript-eslint/eslint-plugin": "^8.6.0",
      "@typescript-eslint/parser": "^8.6.0",
      "@wxt-dev/module-react": "^1.1.1",
      "autoprefixer": "^10.4.20",
      "codecap": "^0.3.1",
      "eslint": "^8.57.1",
      "eslint-config-prettier": "^9.1.0",
      "eslint-plugin-prettier": "^5.2.1",
      "eslint-plugin-simple-import-sort": "^12.1.1",
      "eslint-plugin-tailwindcss": "^3.17.4",
      "postcss": "^8.4.47",
      "prettier": "^3.3.3",
      "prettier-plugin-tailwindcss": "^0.6.6",
      "tailwindcss": "^3.4.12",
      "typescript": "^5.6.2",
      "wxt": "^0.19.10"
   }
}
