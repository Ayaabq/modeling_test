// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyImpl _$$CompanyImplFromJson(Map<String, dynamic> json) =>
    _$CompanyImpl(
      isActive: (json['isActive'] as num).toInt(),
      name: json['name'] as String,
      addressModel: AddressModel.fromJson(
          Map<String, String>.from(json['addressModel'] as Map)),
      established: DateTime.parse(json['established'] as String),
      departments: Department.fromJson(json['departments'] as String),
    );

Map<String, dynamic> _$$CompanyImplToJson(_$CompanyImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'name': instance.name,
      'addressModel': instance.addressModel,
      'established': instance.established.toIso8601String(),
      'departments': instance.departments,
    };
