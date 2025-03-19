<#--
 ~ Copyright 2025 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
<#assign slug = projectName?lower_case?replace('[ _]', '-', 'r')>
{
  "expo": {
    "name": "${projectName}",
    "slug": "${slug}",
    "version": "0.1.0",
    "userInterfaceStyle": "automatic",
    "icon": "./src/assets/images/icon.png",
    "scheme": "${slug?replace('-', '')}",
    "plugins": [
      "expo-router",
      [
        "expo-splash-screen",
        {
          "image": "./src/assets/images/splash-icon.png",
          "imageWidth": 200,
          "resizeMode": "contain"
        }
      ]
    ],
    "newArchEnabled": true,
    "ios": {
      "supportsTablet": true
    },
    "android": {
      "adaptiveIcon": {
        "foregroundImage": "./src/assets/images/adaptive-icon.png"
      }
    },
    "web": {
      "output": "static",
      "favicon": "./src/assets/images/favicon.png"
    },
    "experiments": {
      "typedRoutes": true
    }
  }
}
