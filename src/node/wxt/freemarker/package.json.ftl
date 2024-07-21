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
      "lint": "eslint --ext .ts,.tsx src/ && codecap --check && prettier --check ./**/*.{css,html,json,md,mjs,yml} tailwind.config.ts",
      "format": "eslint --ext .ts,.tsx src/ --fix && codecap --fix && prettier --write ./**/*.{css,html,json,md,mjs,yml} tailwind.config.ts"
   },
   "dependencies": {
      "react": "^18.3.1",
      "react-dom": "^18.3.1"
   },
   "devDependencies": {
      "@types/react": "^18.3.3",
      "@types/react-dom": "^18.3.0",
      "@typescript-eslint/eslint-plugin": "^7.16.1",
      "@typescript-eslint/parser": "^7.16.1",
      "@wxt-dev/module-react": "^1.1.0",
      "autoprefixer": "^10.4.19",
      "codecap": "^0.2.0",
      "eslint": "^8.57.0",
      "eslint-config-prettier": "^9.1.0",
      "eslint-plugin-prettier": "^5.2.1",
      "eslint-plugin-simple-import-sort": "^12.1.1",
      "eslint-plugin-tailwindcss": "^3.17.4",
      "postcss": "^8.4.39",
      "prettier": "^3.3.3",
      "prettier-plugin-tailwindcss": "^0.6.5",
      "tailwindcss": "^3.4.6",
      "typescript": "^5.5.3",
      "wxt": "^0.18.14"
   }
}
