# Scaffold Templates

This repository contains a collection of starter project templates for use with [Scaffold CLI](https://github.com/mayekukhisa/scaffold-cli).

## Available Templates

| Template  | Description                                                                    | Tech Stack                                      |
| :-------- | :----------------------------------------------------------------------------- | :---------------------------------------------- |
| `blank`   | Blank template for starting a new project from scratch                         | None                                            |
| `android` | Android template for building native Android apps                              | Kotlin, Jetpack Compose                         |
| `expo`    | Expo template for building cross-platform mobile apps                          | Expo, React Native, TypeScript, Tailwind CSS    |
| `kotlin`  | Kotlin template for building CLI tools                                         | Kotlin                                          |
| `next`    | Next.js template for building static and server-side rendered web applications | Next.js, TypeScript, Tailwind CSS, shadcn/ui    |
| `wxt`     | WXT template for building web extensions                                       | WXT, React, TypeScript, Tailwind CSS, shadcn/ui |

## Installation

1. Download the [latest release](https://github.com/mayekukhisa/scaffold-templates/releases/latest).

2. Extract the compressed archive file to your preferred location.

3. Install Scaffold CLI if you haven't already. See [here](https://github.com/mayekukhisa/scaffold-cli#getting-started) for instructions.

4. Configure Scaffold CLI to use the templates:

   ```shell
   scaffold config --set templates.home="/path/to/templates"
   ```

   Replace `/path/to/templates` with the actual path where you extracted the templates.

5. Verify the setup by listing available templates:

   ```shell
   scaffold --list-templates
   ```

## License

This repository is available under the terms of the [MIT license](LICENSE).

&copy; 2024-2025 Mayeku Khisa.
