import { VariantProps } from "class-variance-authority"
import { CheckIcon, MoonIcon, SunIcon } from "lucide-react"

import { Button, buttonVariants } from "@/components/ui/button"
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from "@/components/ui/dropdown-menu"
import { Theme, useTheme } from "@/contexts/theme"

const themes: Theme[] = ["light", "dark", "system"]

type ThemeToggleProps = React.HTMLAttributes<HTMLDivElement> & {
  variant?: Exclude<VariantProps<typeof buttonVariants>["variant"], "destructive" | "link">
}

export function ThemeToggle(props: ThemeToggleProps) {
  const { theme: currentTheme, setTheme } = useTheme()

  return (
    <div {...props}>
      <DropdownMenu>
        <DropdownMenuTrigger asChild>
          <Button variant={props.variant} size="icon">
            <SunIcon className="size-4 dark:hidden" />
            <MoonIcon className="hidden size-4 dark:block" />
            <span className="sr-only">Toggle theme</span>
          </Button>
        </DropdownMenuTrigger>
        <DropdownMenuContent align="end">
          {themes.map((theme) => (
            <DropdownMenuItem key={theme} onClick={() => setTheme(theme)}>
              <span>{theme.charAt(0).toUpperCase() + theme.slice(1)}</span>
              {theme === currentTheme && <CheckIcon className="ml-auto" />}
            </DropdownMenuItem>
          ))}
        </DropdownMenuContent>
      </DropdownMenu>
    </div>
  )
}
