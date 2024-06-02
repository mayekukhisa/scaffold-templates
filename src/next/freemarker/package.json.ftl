<#-- 
 ~ Copyright 2023-2024 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
{
   "name": "${projectName?lower_case?replace('[ _]', '-', 'r')}",
   "version": "0.1.0",
   "private": true,
   "scripts": {
      "dev": "next dev",
      "build": "next build",
      "start": "next start",
      "lint": "next lint && codecap --check && prettier --check ./**/*.{css,json,mjs} tailwind.config.ts",
      "format": "next lint --fix && codecap --fix && prettier --write ./**/*.{css,json,mjs} tailwind.config.ts"
   },
   "dependencies": {
      "next": "^14.2.3",
      "react": "^18.3.1",
      "react-dom": "^18.3.1"
   },
   "devDependencies": {
      "@types/node": "^20.13.0",
      "@types/react": "^18.3.3",
      "@types/react-dom": "^18.3.0",
      "codecap": "^0.2.0",
      "eslint": "^8.57.0",
      "eslint-config-next": "^14.2.3",
      "eslint-config-prettier": "^9.1.0",
      "eslint-plugin-prettier": "^5.1.3",
      "eslint-plugin-simple-import-sort": "^12.1.0",
      "eslint-plugin-tailwindcss": "^3.17.0",
      "postcss": "^8.4.38",
      "prettier": "^3.3.0",
      "prettier-plugin-tailwindcss": "^0.5.14",
      "tailwindcss": "^3.4.3",
      "typescript": "^5.4.5"
   }
}
