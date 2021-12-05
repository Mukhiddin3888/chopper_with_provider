import 'package:chopper_with_provider/home_page.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() {
  _setupLogging();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
void _setupLogging() => Logger.root
  ..level =  Level.ALL
  ..onRecord.listen((record) => debugPrint(
    '${record.level.name}: '
        '${record.time} '
        '${record.loggerName}: '
        '${record.message}',
  ));
