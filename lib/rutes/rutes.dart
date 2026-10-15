
import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/alert_page.dart';
import 'package:flutter_application_3/pages/avatar_page.dart';
import 'package:flutter_application_3/screens/home_page.dart';

/*
final rutes = <String, WidgetBuilder>{
  '/'         :(BuildContext context) => HomePage(),
  'alert'     :(BuildContext context) => AlertPage(),
  'avatar'    :(BuildContext context) => AvatarPage(),

};
*/

Map<String, WidgetBuilder> getRutes(){
  return <String, WidgetBuilder>{
  '/'         :(BuildContext context) => HomePage(),
  'alert'     :(BuildContext context) => AlertPage(),
  'avatar'    :(BuildContext context) => AvatarPage(),
  }
}