import "@/app/globals.css"

import type { Metadata } from "next"
import { Inter } from "next/font/google"

import { ThemeProvider } from "@/contexts/theme"
import { appConfig } from "@/lib/configs"

const inter = Inter({ subsets: ["latin"] })

export const metadata: Metadata = {
  title: appConfig.name,
  description: appConfig.description,
}

export default function RootLayout(props: React.PropsWithChildren) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className={`${inter.className} antialiased`}>
        <ThemeProvider>{props.children}</ThemeProvider>
      </body>
    </html>
  )
}
