import * as React from "react"
import * as ReactDOM from "react-dom/client"

import { ThemeProvider } from "@/contexts/theme"
import App from "@/entrypoints/popup/app"

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <ThemeProvider>
      <App />
    </ThemeProvider>
  </React.StrictMode>,
)
