# Log.it() - A Logging Package for Flutter and Dart

## Overview

`Log.it()` is a comprehensive logging package designed for Flutter and Dart applications. It provides a flexible and customizable logging solution with various log levels, timestamps, and color-coded outputs for better readability. This package aims to simplify the logging process and enhance the debugging experience.

## Features

- **Multiple Log Levels**: Supports verbose, debug, info, warning, error, success, and critical log levels.
- **Color-Coded Outputs**: Different colors for different log levels for easy visual distinction.
- **Timestamped Logs**: Includes a timestamp for each log entry to track when the log was created.
- **Source Location**: Displays the source file and line number where the log was called.
- **Customizable**: Easily extendable and customizable to fit different project needs.

## Installation

To install `Log.it()`, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  log_it: ^1.0.0

```

Then, run `flutter pub get` to install the package.

## Usage

Here's a basic example of how to use `Log.it()` in your Dart or Flutter application:

```import 'package:log_it/log_it.dart';void main() {
import 'package:log_it/log_it.dart';void main() {

Log.it("This is an info message.");
Log.it("This is a debug message.", level: LogLevels.debug);
Log.it("This is a warning message.", level: LogLevels.warning);
Log.it("This is an error message.", level: LogLevels.error);
Log.it("This is a success message.", level: LogLevels.success);
Log.it("This is a critical message.", level: LogLevels.critical);

}
   
```

### Customizing Log Levels

You can customize the log levels and their colors by modifying the `_logLog` method in the `Log` class.

## Contributing

Contributions are welcome! Here's how you can contribute to `Log.it()`:

1. **Fork the repository** on GitHub.
2. **Clone the forked repository** to your local machine.
3. **Create a new branch** for your changes.
4. **Make your changes** and commit them to your branch.
5. **Push your changes** to your fork on GitHub.
6. **Submit a pull request** to the original repository.

Please ensure your code adheres to the existing style for consistency.

## License

`Log.it()` is released under the MIT License. See the [LICENSE](https://github.com/theinshort/log_it/blob/main/LICENSE) file for more details.
