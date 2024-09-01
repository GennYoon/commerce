// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuDtoImpl _$$MenuDtoImplFromJson(Map<String, dynamic> json) =>
    _$MenuDtoImpl(
      title: json['title'] as String? ?? '',
      tabId: (json['tabId'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$MenuDtoImplToJson(_$MenuDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'tabId': instance.tabId,
    };
