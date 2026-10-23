import 'package:flutter/material.dart';

class LlistaPage extends StatefulWidget {
  LlistaPage({Key? key}) : super(key: key);

  @override
  _LlistaPageState createState() => _LlistaPageState();
}

class _LlistaPageState extends State<LlistaPage> {
  List<int> _llistaNombres =[];
  int darrerItem = 0;
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Llistes'),
      ),
      body: _crearLlista(),
    );
  }

  Widget _crearLlista(){
    return ListView.builder(
      controller: _scrollController,
      itemCount: _llistaNombres.length,
      itemBuilder: (BuildContext context, int index){
        final imatge = _llistaNombres[index];
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loadig.gif'),
          image: NetworkImage('https://picsum.photos/id/$imatge/200/30')
        );
        
      });
  }
}