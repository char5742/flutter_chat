// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      key: json['key'] as String,
      data: json['data'] as String,
      created: DateTime.parse(json['created'] as String),
      senderKey: json['senderKey'] as String,
      recieverKey: json['recieverKey'] as String,
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'key': instance.key,
      'data': instance.data,
      'created': instance.created.toIso8601String(),
      'senderKey': instance.senderKey,
      'recieverKey': instance.recieverKey,
    };
