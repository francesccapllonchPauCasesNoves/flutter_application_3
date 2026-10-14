import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Titol List'),
          ),
          Divider(),
          ListTile(
            title: Text('Titol list 2'),
          ),
          ListTile(
            title: Text('Titol ListTitle3'),
          )
        ],
      ),
    );
  }
}