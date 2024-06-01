// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      isActive: json['isActive'] as bool,
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

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'isActive': instance.isActive,
      'name': instance.name,
      'addressModel': instance.addressModel,
      'established': instance.established.toIso8601String(),
      'departments': instance.departments,
    };
