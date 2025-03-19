import { Text } from "react-native-paper"
import { SafeAreaView } from "react-native-safe-area-context"

import { appConfig } from "@/lib/configs"

export default function HomeScreen() {
  return (
    <SafeAreaView className="flex-1 items-center justify-center p-4">
      <Text variant="headlineMedium" className="!text-center">
        {appConfig.name}
      </Text>
    </SafeAreaView>
  )
}
