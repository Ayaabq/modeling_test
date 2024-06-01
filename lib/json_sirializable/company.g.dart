// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyJs _$CompanyJsFromJson(Map<String, dynamic> json) => CompanyJs(
      isActive: (json['is_active'] as num).toInt(),
      name: json['name'] as String,
      addressModel: json['addressModel'] == null
          ? null
          : AddressModel.fromJson(
              Map<String, String>.from(json['addressModel'] as Map)),
      established: DateTime.parse(json['established'] as String),
      departments: (json['departments'] as List<dynamic>)
          .map((e) => DepartmentJS.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompanyJsToJson(CompanyJs instance) => <String, dynamic>{
      'is_active': instance.isActive,
      'name': instance.name,
      'addressModel': instance.addressModel,
      'established': instance.established.toIso8601String(),
      'departments': instance.departments,
    };
