import type { Config } from "tailwindcss"

const tailwindConfig = {
  content: ["src/entrypoints/**/*.{html,ts,tsx}", "src/components/**/*.{ts,tsx}"],
  theme: {
    extend: {},
  },
  plugins: [],
} satisfies Config

export default tailwindConfig
