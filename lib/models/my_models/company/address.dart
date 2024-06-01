class AddressModel {
  final String street;
  final String city;
  final String state;
  final String postalCode;

  AddressModel(
      {required this.street,
      required this.city,
      required this.state,
      required this.postalCode});
  factory AddressModel.fromJson(Map<String, String> mp) {
    return AddressModel(
      street: mp['street']!,
      city: mp['city']!,
      state: mp['state']!,
      postalCode: mp['postalCode']!,
    );
  }
  Map<String, String> toJson() {
    return {
      "street": street,
      "city": city,
      "state": state,
      "postalCode": postalCode
    };
  }
}


