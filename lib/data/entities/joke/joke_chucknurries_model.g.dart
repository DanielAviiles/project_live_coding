// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_chucknurries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeChuckNurries _$JokeChuckNurriesFromJson(Map<String, dynamic> json) =>
    JokeChuckNurries(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt:
          JokeChuckNurries.fromJsonDateTime(json['created_at'] as String),
      iconUrl: json['icon_url'] as String,
      id: json['id'] as String,
      updatedAt:
          JokeChuckNurries.fromJsonDateTime(json['updated_at'] as String),
      url: json['url'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$JokeChuckNurriesToJson(JokeChuckNurries instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'created_at': instance.createdAt.toIso8601String(),
      'icon_url': instance.iconUrl,
      'id': instance.id,
      'updated_at': instance.updatedAt.toIso8601String(),
      'url': instance.url,
      'value': instance.value,
    };
