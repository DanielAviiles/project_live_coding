import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotEnvConfig {
  static Future<void> load() async =>
      await dotenv.load(fileName: "assets/.env");
}

Future<void> initAppConfig() async {
  await DotEnvConfig.load();
}