import 'package:flutter/material.dart';

class LlistaPage extends StatefulWidget {
  LlistaPage({Key? key}) : super(key: key);

  @override
  _LlistaPageState createState() => _LlistaPageState();
}

class _LlistaPageState extends State<LlistaPage> {
  List<int> _llistaNombres = [];
  int _darrerItem = 0;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState(){
    super.initState();
    _carregaNou();
    _scrollController.addListener((){
      print(_scrollController.position.pixels);
      if(_scrollController.position.atEdge){
        if(_scrollController.position.pixels == 0){
          print('Scroll a l\'inici');
        }else{
          print('Scroll al final');
        }
      }
    });
  }

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

  _carregaNou(){
    for(int i = 0; i<5; i++){
      _llistaNombres.add(_darrerItem);
      _darrerItem++;
    }
    setState(() {});
  }
}
