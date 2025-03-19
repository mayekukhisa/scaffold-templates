import "@/styles/globals.css"

import { useMaterial3Theme } from "@pchmn/expo-material3-theme"
import { Stack } from "expo-router"
import { StatusBar } from "expo-status-bar"
import * as SystemUI from "expo-system-ui"
import * as React from "react"
import { useColorScheme } from "react-native"
import { MD3DarkTheme, MD3LightTheme, PaperProvider } from "react-native-paper"

export default function RootLayout() {
  const colorScheme = useColorScheme()
  const { theme: systemTheme } = useMaterial3Theme()

  const paperTheme = React.useMemo(
    () =>
      colorScheme === "dark"
        ? { ...MD3DarkTheme, colors: systemTheme.dark }
        : { ...MD3LightTheme, colors: systemTheme.light },
    [colorScheme, systemTheme],
  )

  const backgroundColor = paperTheme.colors.surfaceContainerLowest

  React.useEffect(() => {
    SystemUI.setBackgroundColorAsync(backgroundColor)
  }, [backgroundColor])

  return (
    <PaperProvider theme={paperTheme}>
      <Stack screenOptions={{ headerShown: false, contentStyle: { backgroundColor } }} />
      <StatusBar />
    </PaperProvider>
  )
}
