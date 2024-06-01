import 'dart:convert';

import 'availability.dart';

class Department {
	String? deptId;
	String? name;
	String? manager;
	int? budget;
	int? year;
	Availability? availability;
	String? meetingTime;

	Department({
		this.deptId, 
		this.name, 
		this.manager, 
		this.budget, 
		this.year, 
		this.availability, 
		this.meetingTime, 
	});

	@override
	String toString() {
		return 'Department(deptId: $deptId, name: $name, manager: $manager, budget: $budget, year: $year, availability: $availability, meetingTime: $meetingTime)';
	}

	factory Department.fromMap(Map<String, dynamic> data) => Department(
				deptId: data['deptId'] as String?,
				name: data['name'] as String?,
				manager: data['manager'] as String?,
				budget: data['budget'] as int?,
				year: data['year'] as int?,
				availability: data['availability'] == null
						? null
						: Availability.fromMap(data['availability'] as Map<String, dynamic>),
				meetingTime: data['meeting_time'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'deptId': deptId,
				'name': name,
				'manager': manager,
				'budget': budget,
				'year': year,
				'availability': availability?.toMap(),
				'meeting_time': meetingTime,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Department].
	factory Department.fromJson(String data) {
		return Department.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Department] to a JSON string.
	String toJson() => json.encode(toMap());
}
