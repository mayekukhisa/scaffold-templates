"use client"

import { ThemeProvider as NextThemesProvider } from "next-themes"
import * as React from "react"

export function ThemeProvider(props: React.PropsWithChildren) {
  return (
    <NextThemesProvider attribute="class" disableTransitionOnChange>
      {props.children}
    </NextThemesProvider>
  )
}
