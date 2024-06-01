import 'package:test_ptc/helper/mixins/json_mixin.dart';

class BaseModel<T> with JsonMixin<T>{
  BaseModel({required this.data});

  final T data;


  factory BaseModel.fromJson(Map<String, dynamic> json, T Function(Map<String,dynamic> itemJson) fromJsonT) {
    return BaseModel<T>(
      data: fromJsonT(json) ,

    );
  }

}