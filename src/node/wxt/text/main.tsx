import * as React from "react"
import * as ReactDOM from "react-dom/client"

import App from "@/entrypoints/popup/app"

ReactDOM.createRoot(document.getElementById("__wxt")!).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)
