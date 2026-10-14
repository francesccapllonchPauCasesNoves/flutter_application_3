import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final elements =['Element1', 'Element2', 'Element3', 'Element4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _crearElementsModoDificil(),
      )
    );
  }

  List<Widget> _crearElements(){

    List<Widget> llista = [];
    for(String element in elements){
      final tempWidget = ListTile(
        title: Text(element),
      );
      llista..add(tempWidget)
            ..add(Divider());

  /*  llista.add(tempWidget);
      llista.add(Divider());  */


  /*  elements.forEach((element){
      llista.add(ListTile(
        title: Text(element),
        ));
      });                           */

    }
    return llista;
  }

  List<Widget> _crearElementsModoDificil(){
    
    var widgets = elements.map((element) { 
      return ListTile(
        title: Text(element)
      );
    });

    return widgets.toList();
  }
}