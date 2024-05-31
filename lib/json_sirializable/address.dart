import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';
@JsonSerializable()
class AddressWithJsonSerializable {
  final String street;
  final String city;
  final String state;
  final String postalCode;

  AddressWithJsonSerializable(
      {required this.street,
        required this.city,
        required this.state,
        required this.postalCode});
  factory AddressWithJsonSerializable.fromJson(Map<String, String> json) => _$AddressWithJsonSerializableFromJson(json);
  Map<String, dynamic> toJson() => _$AddressWithJsonSerializableToJson(this);
  }



