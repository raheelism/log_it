library log_it;

// lib/my_logging.dart

import 'dart:developer';

enum LogLevels { verbose, debug, info, warning, error, success, critical }

class Log {
  static void it(String message, {LogLevels level = LogLevels.info}) {
    final prefix = _getPrefix(level);
    final logMessage = _formatMessage(prefix, message);
    final stackTrace = StackTrace.current;
    final location = _getLocation(stackTrace);
    final finalLogMessage = '$location $logMessage';
    _logLog(finalLogMessage, level);
  }

  static String _getPrefix(LogLevels level) {
    switch (level) {
      case LogLevels.verbose:
        return 'VERBOSE';
      case LogLevels.debug:
        return 'DEBUG';
      case LogLevels.info:
        return 'INFO';
      case LogLevels.warning:
        return 'WARNING';
      case LogLevels.error:
        return 'ERROR';
      case LogLevels.success:
        return 'SUCCESS';
      case LogLevels.critical:
        return 'CRITICAL';
      default:
        return '';
    }
  }

  static String _formatMessage(String prefix, String message) {
    final timestamp = DateTime.now().toIso8601String();
    return '[$timestamp] [$prefix]: $message';
  }

  static String _getLocation(StackTrace stackTrace) {
    final location = stackTrace.toString().split("\n")[2];
    final startIndex = location.lastIndexOf('(');
    final endIndex = location.lastIndexOf(')');

    if (startIndex != -1 && endIndex != -1 && endIndex > startIndex) {
      return location.substring(startIndex, endIndex + 1);
    } else {
      return location;
    }
  }

  static void _logLog(String logMessage, LogLevels level) {
    switch (level) {
      case LogLevels.verbose:
        log('\x1B[34m$logMessage\x1B[0m'); // faint
        break;
      case LogLevels.debug:
        log('\x1B[36m$logMessage\x1B[0m'); // cyan
        break;
      case LogLevels.info:
        log('\x1B[95m$logMessage\x1B[0m'); // green
        break;
      case LogLevels.warning:
        log('\x1B[33m$logMessage\x1B[0m'); // yellow
        break;
      case LogLevels.error:
        log('\x1B[31m$logMessage\x1B[0m'); // red
        break;
      case LogLevels.success:
        log('\x1B[32m$logMessage\x1B[0m'); // green
        break;
      case LogLevels.critical:
        log('\x1B[31m$logMessage\x1B[0m'); // red
        break;
    }
  }
}