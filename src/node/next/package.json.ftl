<#--
 ~ Copyright 2024-2025 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
{
  "name": "${projectName?lower_case?replace('[ _]', '-', 'r')}",
  "version": "0.1.0",
  "private": true,
  "scripts": {
    "dev": "next dev --turbopack",
    "build": "next build",
    "start": "next start",
    "lint": "next lint && codecap --check && prettier --check \"**/*.{css,json,md,yml}\" \"*.{mjs,ts}\"",
    "format": "next lint --fix && codecap --fix && prettier --write \"**/*.{css,json,md,yml}\" \"*.{mjs,ts}\""
  },
  "dependencies": {
    "@radix-ui/react-dropdown-menu": "^2.1.6",
    "@radix-ui/react-slot": "^1.1.2",
    "class-variance-authority": "^0.7.1",
    "clsx": "^2.1.1",
    "lucide-react": "^0.483.0",
    "next": "~15.2.3",
    "next-themes": "^0.4.6",
    "react": "^19.0.0",
    "react-dom": "^19.0.0",
    "tailwind-merge": "^3.0.2",
    "tw-animate-css": "^1.2.4"
  },
  "devDependencies": {
    "@eslint/eslintrc": "^3.3.1",
    "@tailwindcss/postcss": "^4.0.15",
    "@types/node": "^22.13.10",
    "@types/react": "^19.0.12",
    "@types/react-dom": "^19.0.4",
    "codecap": "^0.3.1",
    "eslint": "^9.22.0",
    "eslint-config-next": "~15.2.3",
    "eslint-config-prettier": "^10.1.1",
    "eslint-plugin-prettier": "^5.2.3",
    "eslint-plugin-simple-import-sort": "^12.1.1",
    "prettier": "^3.5.3",
    "prettier-plugin-tailwindcss": "^0.6.11",
    "tailwindcss": "^4.0.15",
    "typescript": "^5.8.2"
  }
}
