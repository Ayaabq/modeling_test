import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ptc/models/ai(json2dart)_models/companies/department.dart';
import 'package:test_ptc/models/my_models/company/address.dart';
part 'company.freezed.dart';
part 'company.g.dart';
@Freezed()
class Company with _$Company{


  const factory Company({
    required int isActive,
    required String name,
    required AddressModel addressModel,
    required DateTime established,
    required Department departments
})=_Company;

  factory Company.fromJson(Map<String, dynamic> json) =>_$CompanyFromJson(json);

}