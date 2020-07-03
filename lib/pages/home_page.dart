import 'package:flutter/material.dart';
import 'package:flutterApp/blocs/categories_bloc.dart';
import 'package:flutterApp/models/category.dart'; 
import 'package:flutterApp/widgets/bloc_provider.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final CatgoriesBloc _cateBloc = BlocProvider.of<CatgoriesBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Page'),
      ),
      body: StreamBuilder(
        stream: _cateBloc.outCate,
        builder: (BuildContext context, AsyncSnapshot<List<Category>> cate){
          if(cate.hasData){
            return ListView.builder(
              itemCount: cate.data.length,
              itemBuilder: (BuildContext context, int index){
                return Text(
                  cate.data[index].name
                );
              },
            );
          }
        },
      )
    );
  }
}