import 'package:flutter/material.dart';
import 'package:flutterApp/api/db_api.dart';

class HomePage extends StatelessWidget {
  DbApi db = new DbApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homage Page'),
      ),
      body: ListView.builder(
        itemCount: db.getCatrgory().length,
        itemBuilder: (BuildContext context, int index){
          return Text(db.getCatrgory()[index].name);
        },
      )
    );
  }
}