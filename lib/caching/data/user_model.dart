import 'dart:convert';

import 'package:flutter/services.dart';

class Users{
   List<int>? _users;
   Future<List<int>> get users async {
     _users ??= await _getUsers();
     return _users!;
   }


  _getUsers() async {
    Future.delayed(Duration(seconds: 10));
    List<int> items;
    String filePath="assets/lottie/users.json";
    String jsonString = await rootBundle.loadString(filePath);
    List<dynamic> jsonResponse = json.decode(jsonString);
    items = jsonResponse.cast<int>();
    return items;
  }

}