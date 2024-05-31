import 'package:faker/faker.dart';

class Cache {
  Cache._privateConstructor();
  static final Cache _instance = Cache._privateConstructor();
  factory Cache() {
    return _instance;
  }


  final Map<int, dynamic> _cache = {};
  getUser(int userID){
    if(_cache.containsKey(userID)) return _cache[userID];
    _cache[userID]=_getUserById(userID);
    return _cache[userID];
  }


  // Method to check if the cache contains a key
  bool containsKey(String key) {
    return _cache.containsKey(key);
  }
  void clear() {
    _cache.clear();
  }
  _getUserById(int? id){
    if(id==null||id<0) return null;
    Map<String,dynamic> user={};
    user={
      "id":id,
      "first_name":faker.person.firstName(),
      "last_name":faker.person.lastName(),
      "about":faker.lorem.words(3).join(' '),
      "image":faker.image.image(),
    };
    return user;
  }
}