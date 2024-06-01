// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailabilityWithSerializable _$AvailabilityWithSerializableFromJson(
        Map<String, dynamic> json) =>
    AvailabilityWithSerializable(
      online: json['online'] as bool,
      inStore: json['inStore'] as bool,
    );

Map<String, dynamic> _$AvailabilityWithSerializableToJson(
        AvailabilityWithSerializable instance) =>
    <String, dynamic>{
      'online': instance.online,
      'inStore': instance.inStore,
    };
