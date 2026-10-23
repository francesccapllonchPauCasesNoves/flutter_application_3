import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  bool _valorCheckBox = false;
  double _valorSlider = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        child: Column(
          children: [
            _crearSlider(),
            _crearCheckBox(),
            Expanded(child: _crearImage()
            )],
        ),
      ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigo,
      label: 'Grandaria',
      divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 400, 
      onChanged:(_valorCheckBox)? null : (valor){
        setState(() {
          _valorSlider = valor;
        });
      }
    );
  }

  Widget _crearImage(){
    return Image(image: 
    NetworkImage('https://p.kindpng.com/picc/s/176-1766643_come-to-the-dart-side-flutter-custom-bottom.png'
    ),
    width: _valorSlider,
    fit: BoxFit.contain,
    
    );
  }

  Widget _crearCheckBox(){
    return CheckboxListTile(
      title: Text('Bloquejar Slider'),
      value: _valorCheckBox, 
      onChanged: (estat){
        setState(() {
          _valorCheckBox = estat!;
        });
      });
  }
}