import 'package:logging/logging.dart';

void setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((r) {
    // ignore: avoid_print
    print('[${r.level.name}] ${r.loggerName}: ${r.message}');
  });
}
