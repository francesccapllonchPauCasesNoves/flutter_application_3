
import 'package:flutter/material.dart';
import 'package:flutter_application_3/providers/menu_providers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _llista(),
    );
  }
}

Widget _llista() {

  /*
      menuProvider.CarregarDades().then((data){
        print('Llista: ');
        print(data);
      });
      return ListView(
        children: _llistaElements(),
      );


    NO FUNCIONARIA JA QUE L'APP TENDRIA EFECTE CONGELAT 


    D'aquesta manera funcionaria correctament
    return ListView(
      children: _llistaElements(),
    ); */

    return FutureBuilder(
      future: menuProvider.CarregarDades(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _llistaElements(),
        );
      },
    );
}

List<Widget> _llistaElements(List<dynamic>? data){
  final List<Widget> elements = [];

  data?.forEach((element){
    final widgetTemp = ListTile(
      title: Text(element['texte']),
      leading: Icon(Icons.account_circle, color: Colors.blue,),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: (){},
    );
    elements..add(widgetTemp)
            ..add(Divider());
  });
  return elements;
}