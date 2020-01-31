import 'package:flutter/material.dart';
import 'package:flutter_app/model/first_page_model.dart';
import 'package:flutter_app/model/second_page_model.dart';
import 'package:flutter_app/pages/start_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (context) => FirstPageModel()),
        ChangeNotifierProvider(builder: (context) => SecondPageModel())
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hey There App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.orange,
        accentColor: Colors.orangeAccent
      ),
      home: StartPage(),
    );
  }
}
