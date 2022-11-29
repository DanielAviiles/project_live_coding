import 'package:flutter_dotenv/flutter_dotenv.dart';

class LocalPaths {
  static String apiUrl = dotenv.env['API_URL']!;
}