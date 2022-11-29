import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'joke_chucknurries_model.g.dart';

@JsonSerializable()
class JokeChuckNurries {
  JokeChuckNurries({
    required this.categories,
    required this.createdAt,
    required this.iconUrl,
    required this.id,
    required this.updatedAt,
    required this.url,
    required this.value,
  });

  factory JokeChuckNurries.fromJson(Map<String, dynamic> json) =>
      _$JokeChuckNurriesFromJson(json);

  static JokeChuckNurries rawFromJson(String value) =>
      _$JokeChuckNurriesFromJson(json.decode(value) as Map<String, dynamic>);

  final List<String> categories;

  @JsonKey(name: 'created_at', fromJson: fromJsonDateTime)
  final DateTime createdAt;

  @JsonKey(name: 'icon_url')
  final String iconUrl;

  final String id;

  @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime)
  final DateTime updatedAt;

  final String url;
  final String value;

  static DateTime fromJsonDateTime(String value) => DateTime.parse(value);

  Map<String, dynamic> toJson() => _$JokeChuckNurriesToJson(this);
}
