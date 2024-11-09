import type { Config } from "tailwindcss"

const tailwindConfig = {
  content: ["src/app/**/*.{mdx,ts,tsx}", "src/components/**/*.{mdx,ts,tsx}"],
  theme: {
    extend: {},
  },
  plugins: [],
} satisfies Config

export default tailwindConfig
