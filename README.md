# Scaffold Template Collection

This repository hosts the template collection for [Scaffold][1], a project structure generator tool.

## Available Templates

> **Note:** This collection is in early development and currently has limited templates.

## Installation

1. Clone the repository to your local machine:

   ```shell
   git clone https://github.com/mayekukhisa/scaffold-template-collection.git
   ```

2. Install Scaffold if you haven't already. You can locate installation instructions [here][2].

3. Connect Scaffold to the template collection:

   ```shell
   scaffold config --set template.collection.path=/path/to/collection
   ```

   Replace `/path/to/collection` with the actual path to your cloned repository.

4. Verify the setup by listing available templates:

   ```shell
   scaffold --list-templates
   ```

> **Note:** Steps 3 and 4 assume you have `scaffold` accessible from your shell environment. If it is not accessible, consult the [guide][2] on how to run the tool.

## License

This project is available under the terms of the [MIT license][3].

&copy; 2024 Mayeku Khisa.

[1]: https://github.com/mayekukhisa/scaffold
[2]: https://github.com/mayekukhisa/scaffold#getting-started
[3]: LICENSE
