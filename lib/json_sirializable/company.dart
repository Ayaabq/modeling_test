import 'package:test_ptc/helper/mixins/date_time_mixin.dart';
import 'package:test_ptc/models/my_models/company/address.dart';

import 'department.dart';
import 'package:json_annotation/json_annotation.dart';
part 'company.g.dart';
@JsonSerializable()
class CompanyJs with DateTimeMixin<CompanyJs>{

  @JsonKey(name: "is_active")
  final int  isActive;
  final String name;
  final AddressModel? addressModel;
  final DateTime established;
  final List<DepartmentJS> departments;

  CompanyJs(
      {required this.isActive,
        required this.name,
        this.addressModel,
        required this.established,
        required this.departments});
  factory CompanyJs.fromJson(Map<String, dynamic> json) =>_$CompanyJsFromJson(json);

  Map<String, dynamic> toJson()=>_$CompanyJsToJson(this);



}