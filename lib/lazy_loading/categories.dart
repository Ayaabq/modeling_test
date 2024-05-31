import 'package:faker/faker.dart';

class Categories{
  List<String>? _categories;

  List<String> get categories {
    _categories ??= _getCategories();
    return _categories!;
  }




  _getCategories(){
    List<String> items=[];
    // Future.delayed(Duration(seconds: 10));
    for(int i=0;i<1000;i++) {
      items.add(faker.lorem.words(3).join(' '));
    }
    return items;
  }
}