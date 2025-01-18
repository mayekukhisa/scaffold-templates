import { Check, Moon, Sun } from "lucide-react"

import { Button, ButtonProps } from "@/components/ui/button"
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from "@/components/ui/dropdown-menu"
import { Theme, useTheme } from "@/contexts/theme"

const themes: Theme[] = ["light", "dark", "system"]

interface ThemeToggleProps extends React.HTMLAttributes<HTMLDivElement> {
  variant?: Exclude<ButtonProps["variant"], "destructive" | "link">
}

export function ThemeToggle(props: ThemeToggleProps) {
  const { theme: currentTheme, setTheme } = useTheme()

  return (
    <div {...props}>
      <DropdownMenu>
        <DropdownMenuTrigger asChild>
          <Button variant={props.variant} size="icon">
            <Sun className="size-5 dark:hidden" />
            <Moon className="hidden size-5 dark:block" />
            <span className="sr-only">Toggle theme</span>
          </Button>
        </DropdownMenuTrigger>
        <DropdownMenuContent align="end">
          {themes.map((theme) => (
            <DropdownMenuItem key={theme} onClick={() => setTheme(theme)}>
              <span>{theme.charAt(0).toUpperCase() + theme.slice(1)}</span>
              {theme === currentTheme && <Check className="ml-auto" />}
            </DropdownMenuItem>
          ))}
        </DropdownMenuContent>
      </DropdownMenu>
    </div>
  )
}
