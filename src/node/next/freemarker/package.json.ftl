<#--
 ~ Copyright 2024 Mayeku Khisa
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
    "check": "next lint && codecap --check && prettier --check \"**/*.{css,json,md,mjs,yml}\" tailwind.config.ts",
    "fix": "next lint --fix && codecap --fix && prettier --write \"**/*.{css,json,md,mjs,yml}\" tailwind.config.ts"
  },
  "dependencies": {
    "next": "^14.2.13",
    "react": "^18.3.1",
    "react-dom": "^18.3.1"
  },
  "devDependencies": {
    "@types/node": "^22.5.5",
    "@types/react": "^18.3.8",
    "@types/react-dom": "^18.3.0",
    "codecap": "^0.3.1",
    "eslint": "^8.57.1",
    "eslint-config-next": "^14.2.13",
    "eslint-config-prettier": "^9.1.0",
    "eslint-plugin-prettier": "^5.2.1",
    "eslint-plugin-simple-import-sort": "^12.1.1",
    "eslint-plugin-tailwindcss": "^3.17.4",
    "postcss": "^8.4.47",
    "prettier": "^3.3.3",
    "prettier-plugin-tailwindcss": "^0.6.6",
    "tailwindcss": "^3.4.12",
    "typescript": "^5.6.2"
  }
}
