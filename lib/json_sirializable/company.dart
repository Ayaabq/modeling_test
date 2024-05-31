import 'package:test_ptc/helper/mixins/date_time_mixin.dart';
import 'package:test_ptc/models/my_models/company/address.dart';

import 'department.dart';
import 'package:json_annotation/json_annotation.dart';
part 'company.g.dart';
@JsonSerializable()
class Company with DateTimeMixin<Company>{
  final bool isActive;
  final String name;
  final AddressModel? addressModel;
  final DateTime established;
  final List<DepartmentJS> departments;

  Company(
      {required this.isActive,
        required this.name,
        this.addressModel,
        required this.established,
        required this.departments});
  factory Company.fromJson(Map<String, dynamic> json) =>_$CompanyFromJson(json);

  Map<String, dynamic> toJson()=>_$CompanyToJson(this);



}
