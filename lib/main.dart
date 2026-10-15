import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/alert_page.dart';
import 'package:flutter_application_3/pages/avatar_page.dart';
import 'package:flutter_application_3/screens/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      //home: HomePage()
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/'     :(BuildContext context) => HomePage(),
        'alert' :(BuildContext context) => AlertPage(),
        'avatar':(BuildContext context) => AvatarPage(),
      },
      onGenerateRoute: (RouteSettings settings){
        print('Hem anat a : ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
          );
      },
    );
  }
}