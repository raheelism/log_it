import 'package:flutter_test/flutter_test.dart';
import 'package:log_it/log_it.dart';



void main() {
  test('Log.it should log a message with the correct level', () {
  Log.it("This is an info message.");
  Log.it("This is a debug message.", level: LogLevels.debug);
  Log.it("This is a warning message.", level: LogLevels.warning);
  Log.it("This is an error message.", level: LogLevels.error);
  Log.it("This is a success message.", level: LogLevels.success);
  Log.it("This is a critical message.", level: LogLevels.critical);  });
}
