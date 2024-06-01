import 'dart:convert';

class Address {
	String? street;
	String? city;
	String? state;
	String? postalCode;

	Address({this.street, this.city, this.state, this.postalCode});

	@override
	String toString() {
		return 'Address(street: $street, city: $city, state: $state, postalCode: $postalCode)';
	}

	factory Address.fromMap(Map<String, dynamic> data) => Address(
				street: data['street'] as String?,
				city: data['city'] as String?,
				state: data['state'] as String?,
				postalCode: data['postalCode'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'street': street,
				'city': city,
				'state': state,
				'postalCode': postalCode,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Address].
	factory Address.fromJson(String data) {
		return Address.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Address] to a JSON string.
	String toJson() => json.encode(toMap());
}
