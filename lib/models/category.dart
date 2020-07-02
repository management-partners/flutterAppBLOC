import 'package:flutter/foundation.dart';

class Category {
  static const NAME_KEY = 'name';
    String id;
    String name;
    Category(String name){
     this.name = name;
    }
    Category.fromFrirebase(Map<String, dynamic> json){
      name = json['name'];
    }
}