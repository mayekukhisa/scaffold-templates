import type { Config } from "tailwindcss"

const tailwindConfig: Config = {
   content: ["src/entrypoints/**/*.{html,ts,tsx}"],
   theme: {
      extend: {},
   },
   plugins: [],
}

export default tailwindConfig
