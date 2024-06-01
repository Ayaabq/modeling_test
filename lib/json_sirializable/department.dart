import 'package:test_ptc/helper/date_time_helper.dart';
import 'package:test_ptc/models/my_models/company/department/availability.dart';
import 'package:test_ptc/models/my_models/time.dart';
import 'package:json_annotation/json_annotation.dart';
part 'department.g.dart';
@JsonSerializable()
class DepartmentJS {

  final String deptId;
  @JsonKey(name: "kasjld")
  @JsonKey()
  final String name;
  final String manager;
  final double budget;
  final Availability? availability;
  // @JsonKey(meetingTime : "meeting_time")
  @JsonKey(meetingTime : "meetingTime")
  final DateTime meetingTime;
  final DateTime? year;

  DepartmentJS(
      {required this.deptId,
        required this.name,
        required this.manager,
        required this.budget,
        required this.meetingTime,
        this.availability,
        this.year});

  factory DepartmentJS.fromJson(Map<String, dynamic> json) => _$DepartmentJSFromJson(json);

  Map<String, dynamic> toJson() => _$DepartmentJSToJson(this);


}
