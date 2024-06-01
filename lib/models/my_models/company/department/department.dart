import 'package:test_ptc/helper/date_time_helper.dart';
import 'package:test_ptc/models/my_models/company/department/availability.dart';
import 'package:test_ptc/models/my_models/time.dart';

class Department {
  final String deptId;
  final String name;
  final String manager;
  final double budget;
  final Availability? availability;
  final Time meetingTime;
  final DateTime? year;

  Department(
      {required this.deptId,
      required this.name,
      required this.manager,
      required this.budget,
      required this.meetingTime,
      this.availability,
      this.year});

  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        deptId: json['deptId'],
        name: json['name'],
        manager: json['manager'],
        budget: json['budget'],
        availability: json['availability']!=null?Availability.fromJson(json['availability']): null,
        meetingTime: Time.fromString(json['meeting_time']),
        year: json['year']!=null?DateTime(json['year']) : null
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "deptId": deptId,
      "name": name,
      "manager": manager,
      "budget": budget,
      "year": year.toString(),
      "availability": availability?.toJson(),
      "meeting_time": meetingTime.toString()
    };
  }


}
