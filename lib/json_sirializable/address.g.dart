// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressWithJsonSerializable _$AddressWithJsonSerializableFromJson(
        Map<String, dynamic> json) =>
    AddressWithJsonSerializable(
      street: json['street'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postalCode: json['postalCode'] as String,
    );

Map<String, dynamic> _$AddressWithJsonSerializableToJson(
        AddressWithJsonSerializable instance) =>
    <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
    };
