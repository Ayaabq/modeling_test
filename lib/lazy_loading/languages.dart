
import 'dart:convert';

import 'package:flutter/services.dart';

class Languages{
  List <String>? _languages;
  Future<List<String>> get languages async{
    _languages ??= await _getLanguages();
    return _languages!;
  }

  _getLanguages() async {
    Future.delayed(Duration(seconds: 10));
    List<String> items;
    String filePath="assets/lottie/languages.json";
    String jsonString = await rootBundle.loadString(filePath);
    List<dynamic> jsonResponse = json.decode(jsonString);
    items = jsonResponse.cast<String>();
    return items;
  }
}