
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


    NO FUNCIONARIA JA QUE L'APP TENDRIA EFECTE CONGELAT */

    return ListView(
      children: _llistaElements(),
    );
}

List<Widget> _llistaElements(){
  print(menuProvider.opcions);
  return [];
}