import 'dart:convert';

class Availability {
	bool? online;
	bool? inStore;

	Availability({this.online, this.inStore});

	@override
	String toString() => 'Availability(online: $online, inStore: $inStore)';

	factory Availability.fromMap(Map<String, dynamic> data) => Availability(
				online: data['online'] as bool?,
				inStore: data['inStore'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'online': online,
				'inStore': inStore,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Availability].
	factory Availability.fromJson(String data) {
		return Availability.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Availability] to a JSON string.
	String toJson() => json.encode(toMap());
}
