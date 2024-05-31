import 'package:json_annotation/json_annotation.dart';
part 'availability.g.dart';

@JsonSerializable()
class AvailabilityWithSerializable {
  final bool online;
  final bool inStore;

  factory AvailabilityWithSerializable.fromJson(Map<String, dynamic> json)
  => _$AvailabilityWithSerializableFromJson(json);
  Map<String,dynamic> toJson() => _$AvailabilityWithSerializableToJson(this);
  AvailabilityWithSerializable({required this.online, required this.inStore});
}
