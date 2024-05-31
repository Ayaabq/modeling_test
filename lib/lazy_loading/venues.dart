import 'package:faker/faker.dart';

class Venues{
  List<String>? _venues;

  List<String> get venues {
    _venues ??= _getVenues();
    return _venues!;
  }

  _getVenues(){
    List<String> items=[];
    for(int i=0;i<1000;i++) {
      items.add(faker.lorem.words(2).join(' '));
    }
    return items;
  }

}