// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepartmentJS _$DepartmentJSFromJson(Map<String, dynamic> json) => DepartmentJS(
      deptId: json['deptId'] as String,
      name: json['name'] as String,
      manager: json['manager'] as String,
      budget: (json['budget'] as num).toDouble(),
      meetingTime: DateTime.parse(json['meetingTime'] as String),
      availability: json['availability'] == null
          ? null
          : Availability.fromJson(json['availability'] as Map<String, dynamic>),
      year:
          json['year'] == null ? null : DateTime.parse(json['year'] as String),
    );

Map<String, dynamic> _$DepartmentJSToJson(DepartmentJS instance) =>
    <String, dynamic>{
      'deptId': instance.deptId,
      'name': instance.name,
      'manager': instance.manager,
      'budget': instance.budget,
      'availability': instance.availability,
      'meetingTime': instance.meetingTime.toIso8601String(),
      'year': instance.year?.toIso8601String(),
    };
