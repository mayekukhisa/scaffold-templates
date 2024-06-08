# Scaffold Template Collection

This repository hosts the template collection for [Scaffold][1], a project structure generator tool.

## Available Templates

-  **blank**: Clean, minimalist starting point for any project.
-  **android**: Start an Android app with Kotlin.
-  **cli**: Launch a command-line interface with Kotlin.
-  **next**: Build scalable web apps with Next.js, TypeScript, and Tailwind CSS.

## Installation

1. Download the [latest release][2].

2. Extract the downloaded file (.zip or .tar.gz) to your preferred location.

3. Install Scaffold if you haven't already. You can locate installation instructions [here][3].

4. Set up Scaffold to recognize the template collection:

   ```shell
   scaffold config --set template.collection.path=/path/to/collection
   ```

   Replace `/path/to/collection` with the actual path where you extracted the template collection.

5. Verify the setup by listing available templates:

   ```shell
   scaffold --list-templates
   ```

## License

This project is available under the terms of the [MIT license][4].

&copy; 2024 Mayeku Khisa.

[1]: https://github.com/mayekukhisa/scaffold
[2]: https://github.com/mayekukhisa/scaffold-template-collection/releases/latest
[3]: https://github.com/mayekukhisa/scaffold#getting-started
[4]: LICENSE
