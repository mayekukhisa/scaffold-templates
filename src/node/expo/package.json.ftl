<#--
 ~ Copyright 2025 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
{
  "name": "${projectName?lower_case?replace('[ _]', '-', 'r')}",
  "version": "0.1.0",
  "private": true,
  "main": "expo-router/entry",
  "scripts": {
    "start": "expo start",
    "android": "expo start --android",
    "ios": "expo start --ios",
    "web": "expo start --web",
    "lint": "expo lint && codecap --check && prettier --check \"**/*.{css,json,md,yml}\"",
    "format": "eslint --fix . && codecap --fix && prettier --write \"**/*.{css,json,md,yml}\""
  },
  "dependencies": {
    "@pchmn/expo-material3-theme": "^1.3.2",
    "expo": "~52.0.39",
    "expo-router": "~4.0.19",
    "expo-splash-screen": "~0.29.22",
    "expo-status-bar": "~2.0.1",
    "expo-system-ui": "~4.0.8",
    "nativewind": "^4.1.23",
    "react": "~18.3.1",
    "react-dom": "~18.3.1",
    "react-native": "~0.76.7",
    "react-native-paper": "^5.13.1",
    "react-native-safe-area-context": "~4.12.0",
    "react-native-screens": "~4.4.0",
    "react-native-web": "~0.19.13",
    "tailwindcss": "^3.4.17"
  },
  "devDependencies": {
    "@babel/core": "^7.26.10",
    "@types/react": "~18.3.19",
    "codecap": "^0.3.1",
    "eslint": "^8.57.1",
    "eslint-config-expo": "~8.0.1",
    "eslint-config-prettier": "^10.1.1",
    "eslint-plugin-prettier": "^5.2.3",
    "eslint-plugin-simple-import-sort": "^12.1.1",
    "prettier": "^3.5.3",
    "prettier-plugin-tailwindcss": "^0.6.11",
    "typescript": "^5.8.2"
  },
  "expo": {
    "doctor": {
      "reactNativeDirectoryCheck": {
        "exclude": [
          "@pchmn/expo-material3-theme",
          "tailwindcss"
        ]
      }
    }
  }
}
