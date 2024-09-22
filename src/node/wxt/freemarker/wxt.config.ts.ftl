<#--
 ~ Copyright 2024 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
import { defineConfig } from "wxt"

export default defineConfig({
   modules: ["@wxt-dev/module-react"],
   srcDir: "src",
   manifest: {
      name: "${projectName}",
   },
})
