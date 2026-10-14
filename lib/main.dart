import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Components'),
        ),
        body: HomePageTemp(),
      ),
    );
  }
}