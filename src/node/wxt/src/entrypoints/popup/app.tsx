import { ThemeToggle } from "@/components/theme-toggle"
import { appConfig } from "@/lib/configs"

export default function App() {
  return (
    <main className="grid h-[400px] place-items-center p-4">
      <p className="text-center text-3xl font-medium">{appConfig.name}</p>
      <ThemeToggle variant="outline" className="fixed top-4 right-4" />
    </main>
  )
}
