// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$$_AccountFromJson(Map<String, dynamic> json) => _$_Account(
      name: json['name'] as String,
      key: json['key'] as String,
      accessToken: json['accessToken'] as String?,
      followBy:
          (json['followBy'] as List<dynamic>).map((e) => e as String).toList(),
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'accessToken': instance.accessToken,
      'followBy': instance.followBy,
      'following': instance.following,
    };
