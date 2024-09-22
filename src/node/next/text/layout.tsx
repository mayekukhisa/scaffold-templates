import "./globals.css"

import type { Metadata } from "next"
import { Inter } from "next/font/google"

import { appConfig } from "@/lib/configs"

const inter = Inter({ subsets: ["latin"] })

export const metadata: Metadata = {
   title: appConfig.name,
   description: appConfig.description,
}

export default function RootLayout(props: React.PropsWithChildren) {
   return (
      <html lang="en">
         <body className={`${inter.className} antialiased`}>{props.children}</body>
      </html>
   )
}
