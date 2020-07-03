import 'dart:async';

import 'package:flutterApp/api/db_api.dart';
import 'package:flutterApp/models/category.dart';
import 'package:flutterApp/widgets/bloc_provider.dart';

class CatgoriesBloc implements BlocBase {

  List<Category> lstCategories;
  StreamController<List<Category>> _cateCrlt = StreamController<List<Category>>();

  Sink<List<Category>> get _inCate => _cateCrlt.sink;
  Stream<List<Category>> get outCate => _cateCrlt.stream;

  CatgoriesBloc(){
    getCategories();
  }

  void getCategories(){
    DbApi db = DbApi();
    lstCategories = db.getCatrgory();
    _inCate.add(lstCategories);
  }

  @override
  void dispose() {
    _cateCrlt.close();
  }
  
}