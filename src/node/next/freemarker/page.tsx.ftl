<#--
 ~ Copyright 2024 Mayeku Khisa
 ~
 ~ Use of this source code is governed by a MIT license as appearing in the
 ~ LICENSE file included in the root of this source tree.
 -->
import { appConfig } from "@/lib/configs"

export default function Home() {
  return (
    <main className="grid h-svh place-items-center">
      <p className="p-4 text-3xl font-medium">{appConfig.name}</p>
    </main>
  )
}
