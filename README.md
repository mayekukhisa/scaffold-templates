# Scaffold Template Collection

This repository offers a collection of starter templates for [Scaffold][1], providing a basic foundation for a variety of projects.

## Available Templates

> [!NOTE]
>
> This collection is in early development and currently offers a limited selection of templates.

- **blank**: Launch your project with a clean, bare-bones setup
- **android**: Kickstart your Android development with Kotlin and Jetpack Compose.
- **kotlin**: Create powerful JVM applications with Kotlin.
- **next**: Develop scalable web apps with Next.js, TypeScript, Tailwind CSS, and shadcn/ui.
- **wxt**: Build dynamic web extensions with React, TypeScript, Tailwind CSS, and shadcn/ui.

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

This repository is available under the terms of the [MIT license][4].

&copy; 2024-2025 Mayeku Khisa.

[1]: https://github.com/mayekukhisa/scaffold
[2]: https://github.com/mayekukhisa/scaffold-templates/releases/latest
[3]: https://github.com/mayekukhisa/scaffold#getting-started
[4]: LICENSE
