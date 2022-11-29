import 'package:flutter/material.dart';
import 'package:project_live_coding/core/api/get_jokes_api.dart';
import 'package:project_live_coding/data/entities/joke/joke_chucknurries_model.dart';

class HomeController {

  final ValueNotifier<bool> loading = ValueNotifier<bool>(false);
  final List<JokeChuckNurries> jokesModels = <JokeChuckNurries>[];

  static final HomeController _singleton = HomeController._internal();

  factory HomeController() {
    return _singleton;
  }
  HomeController._internal();

  Future<void> init() async {
    final jokes = await excuteGetJoke();
    jokesModels.addAll(jokes);
  }

  Future<List<JokeChuckNurries>> excuteGetJoke() async {
    List<JokeChuckNurries> listJokes = <JokeChuckNurries>[];
    loading.value = true;
    for (int i = 0; i < 20; i++) {
      final JokeChuckNurries? response = await GetJokesApi().getData();
      if (response != null) {
        listJokes.add(response);
      }
    }
    loading.value = false;

    return listJokes;
  }

  Future<void> reloadData() async {
    jokesModels.clear();
    final jokes = await excuteGetJoke();
    jokesModels.addAll(jokes);
  }
}
