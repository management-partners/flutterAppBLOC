import 'package:flutter/material.dart';
import 'package:flutterApp/blocs/categories_bloc.dart';
import 'package:flutterApp/pages/home_page.dart';
import 'package:flutterApp/widgets/bloc_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        child: HomePage(), 
        bloc: CatgoriesBloc()),
    );
  }
}

