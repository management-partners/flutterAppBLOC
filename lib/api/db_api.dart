import 'package:flutterApp/models/category.dart';

class DbApi {
  
  List<Category>getCatrgory(){
      Category cate = new Category('name');
      Category cate1 = new Category('name1');
      Category cate2 = new Category('name2');
      List<Category> lstCate = List<Category>();
      lstCate.add(cate);
      lstCate.add(cate1);
      lstCate.add(cate2);
      return lstCate;
  }
}