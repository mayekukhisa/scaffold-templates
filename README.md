# Scaffold Template Collection

This repository contains a collection of pre-configured project templates for [Scaffold][1].

## Available Templates

- **blank**: Launch your project with a clean, minimalist foundation.
- **android**: Kickstart your Android development with Kotlin and Jetpack Compose.
- **cli**: Create powerful command-line interfaces with Kotlin.
- **next**: Develop scalable web apps with Next.js, TypeScript, and Tailwind CSS.
- **wxt**: Build dynamic web extensions with React, TypeScript, and Tailwind CSS.

## Installation

1. Download the [latest release][2].

2. Extract the compressed archive file to your preferred location.

3. Install Scaffold if you haven't already. You can find installation instructions [here][3].

4. Configure Scaffold to use the template collection:

   ```shell
   scaffold config --set template.collection.path=/path/to/collection
   ```

   Replace `/path/to/collection` with the actual path where you extracted the template collection.

5. Verify the configuration by listing available templates:

   ```shell
   scaffold --list-templates
   ```

## License

This collection is available under the terms of the [MIT license][4].

&copy; 2024 Mayeku Khisa.

[1]: https://github.com/mayekukhisa/scaffold
[2]: https://github.com/mayekukhisa/scaffold-template-collection/releases/latest
[3]: https://github.com/mayekukhisa/scaffold#getting-started
[4]: LICENSE
