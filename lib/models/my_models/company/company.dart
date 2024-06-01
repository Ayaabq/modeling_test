import 'package:test_ptc/helper/mixins/date_time_mixin.dart';
import 'package:test_ptc/models/my_models/company/address.dart';

import 'department/department.dart';


class Company with DateTimeMixin<Company>{
  final bool isActive;
  final String name;
  final AddressModel? addressModel;
  final DateTime established;
  final List<Department> departments;

  Company(
      {required this.isActive,
      required this.name,
       this.addressModel,
      required this.established,
      required this.departments});
  factory Company.fromJson(Map<String, dynamic> json) {
    List<Department> deps=[];
    if (json['departments'] != null) {
     
      for(var e in json['departments']){
     
        deps.add(Department.fromJson(e));
      }

    }
    return Company(
      isActive: json.containsKey('is_active')?(json['is_active'] ==1):(json['isActive'] ==1) ,
      name: json['name'],
      addressModel: json['address']!=null?AddressModel.fromJson(json['address']): null,
      established: DateTime.parse(json['established']).toLocal(),
      departments: deps,
    );
  }

    Map<String, dynamic> toJson(){
    return {
      "is_active": isActive?1:0,
      "name": name,
      "address": addressModel?.toJson(),
      "established": stringFromDateTime(established),
      "departments":    departments.map((e) => e.toJson())

    };
  }



}
