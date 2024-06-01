import 'package:flutter/material.dart';
import 'package:test_ptc/caching/data/user_model.dart';
import 'package:test_ptc/caching/views/users_view.dart';
import 'package:test_ptc/lazy_loading/categories.dart';
import 'package:test_ptc/lazy_loading/languages.dart';
import 'package:test_ptc/lazy_loading/venues.dart';
import 'package:test_ptc/models/my_models/base_model.dart';
import 'package:test_ptc/models/my_models/company/company.dart';

import 'models/ai(json2dart)_models/companies/company.dart';

void main()async{

  ///MODELING
 //  // the jsons
 //  Map<String,dynamic> json={
 //    "is_active": 0,
 //    "name": "Tech Innovators Inc.",
 //    "address": {
 //      "street": "123 Innovation Drive",
 //      "city": "Techville",
 //      "state": "CA",
 //      "postalCode": "94043"
 //    },
 //    "established": "2023-05-24T00:00:00Z",
 //    "departments": [
 //      {
 //        "deptId": "D001",
 //        "name": "Engineering",
 //        "manager": "Carol Davis",
 //        "budget": 500000.00,
 //        "year": 2023,
 //        "availability": {
 //          "online": true,
 //          "inStore": false
 //        },
 //        "meeting_time": "14:30"
 //      },
 //      {
 //        "deptId": "D002",
 //        "name": "Marketing",
 //        "manager": "David Wilson",
 //        "budget": 300000.00,
 //        "meeting_time": "10:00 AM"
 //      }
 //    ]
 //  };
 //  Map<String,dynamic> jsonComp2={
 //    "isActive": 1,
 //    "name": "Tech Innovators Inc.",
 //    "address": null,
 //    "established": "2023-05-24T00:00:00Z",
 //    "departments": []
 //  };
 //  //----------------------------
 //  // note i just fix my models, the ai models and generated models, i just try them ,
 //  // and they need some fixing
 //
 //  // try my model ..
 // var company=Company.fromJson(jsonComp2);
 // // try my base model..
 //  BaseModel<Company> bCompany= BaseModel<Company>.fromJson(json, Company.fromJson);
 //  // try the foramtting
 //  print(company.formattedDate(company.established));
 //  print(company.established);
 //  print(company.toJson());
 //  //----------------------
 //  //try ai model
 //  var aiCompany=AiCompany.fromMap(jsonComp2);
 //  print(aiCompany.toJson());
  WidgetsFlutterBinding.ensureInitialized();
  ///Laszy LOADING
  //Languages
// we notice that the languages loaded for one time
  // the first time it tooks 10 seconds, but in the second time
  var langData=  await Languages().languages;
  print(langData);
  var languages=await Languages().languages;
  print(languages);
  //Categoris
  var catData=Categories().categories;
  print(catData);
  //vanues
  var vanData =Venues().venues;
  print(vanData);

  /// Caching
  //
  // var users=await Users().users;
  var users=[1,2,3,4,5,6,7,8,9,10];
  runApp(MaterialApp(home: UsersView(users: users,),));

}


