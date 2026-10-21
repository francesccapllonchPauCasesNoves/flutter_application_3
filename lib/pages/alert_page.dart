import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('alert page'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Boto Alerta'),
          style:ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            shape: StadiumBorder()
          ), 
          onPressed: () => _mostrarAlert(context),
        ),        
      ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text('Titol de la recerca'),
          content: Column(
            mainAxisSize:  MainAxisSize.min,
            children: [
              Text('Contingut de la alerta'),
              FlutterLogo(size: 50.0,)
            ],
          ),
          actions: [
            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Cancellar')),
            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Ok')),
          ],
          shape: RoundedRectangleBorder(borderRadius: 
          BorderRadius.circular(30.0)),
        );
      }
    );
  }
}