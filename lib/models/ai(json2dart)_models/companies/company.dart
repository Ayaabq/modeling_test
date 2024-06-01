import 'dart:convert';

import 'address.dart';
import 'department.dart';

class AiCompany {
	int? isActive;
	String? name;
	Address? address;
	String? established;
	List<Department>? departments;

	AiCompany({
		this.isActive, 
		this.name, 
		this.address, 
		this.established, 
		this.departments, 
	});

	@override
	String toString() {
		return 'Company(isActive: $isActive, name: $name, address: $address, established: $established, departments: $departments)';
	}

	factory AiCompany.fromMap(Map<String, dynamic> data) => AiCompany(
				isActive: data['is_active'] as int?,
				name: data['name'] as String?,
				address: data['address'] == null
						? null
						: Address.fromMap(data['address'] as Map<String, dynamic>),
				established: data['established'] as String?,
				departments: (data['departments'] as List<dynamic>?)
						?.map((e) => Department.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'is_active': isActive,
				'name': name,
				'address': address?.toMap(),
				'established': established,
				'departments': departments?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AiCompany].
	factory AiCompany.fromJson(String data) {
		return AiCompany.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [AiCompany] to a JSON string.
	String toJson() => json.encode(toMap());
}
