import 'dart:convert';

import 'company.dart';

class Companies {
	AiCompany? company;

	Companies({this.company});

	@override
	String toString() => 'Companies(company: $company)';

	factory Companies.fromMap(Map<String, dynamic> data) => Companies(
				company: data['company'] == null
						? null
						: AiCompany.fromMap(data['company'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'company': company?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Companies].
	factory Companies.fromJson(String data) {
		return Companies.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Companies] to a JSON string.
	String toJson() => json.encode(toMap());
}
