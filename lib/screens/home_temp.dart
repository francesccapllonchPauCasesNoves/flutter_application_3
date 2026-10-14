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
      return Column(
        children: [
          ListTile(
            title: Text(element),
            subtitle: Text('Descripcio dels elements'),
            leading: const Icon(Icons.account_tree_outlined,
                  color: Colors.pink,
                  size: 24.0),
            trailing: const Icon(Icons.abc,
                  color: Colors.amber,
                  size: 24.0),
            onTap: (){
              print('Has tocat un element!');
            },
          ),
          Divider(),
          
        ],
      );
    });

    return widgets.toList();
  }
}