import 'package:flutter/material.dart';
import 'package:project_live_coding/app/modules/home/home_page.dart';
import 'package:project_live_coding/core/config/dot_env_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppConfig();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
