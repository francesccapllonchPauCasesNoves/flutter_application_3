import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/alert_page.dart';
import 'package:flutter_application_3/pages/avatar_page.dart';
import 'package:flutter_application_3/rutes/rutes.dart';
import 'package:flutter_application_3/screens/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      //home: HomePage()
      initialRoute: '/',
      routes: getRutes(),
      onGenerateRoute: (RouteSettings settings){
        print('Hem anat a : ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
          );
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ]

    );
  }
}