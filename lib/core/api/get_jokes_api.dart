
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:project_live_coding/core/enviroments/local_paths.dart';
import 'package:project_live_coding/data/entities/joke/joke_chucknurries_model.dart';

class GetJokesApi {
  Future<JokeChuckNurries?> getData() async {
    try {
      final url = Uri.parse(LocalPaths.apiUrl);
      final response = await http.get(url);
      final bodyParse = JokeChuckNurries.rawFromJson(response.body);
      return bodyParse;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}