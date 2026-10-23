import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nom = '';
  String _email = '';
  String _data = '';
  String _pais = 'Andorra';
  final TextEditingController _inputFieldDataController = TextEditingController();
  List<String> _paisos = ['Andorra','Anglaterra','Dinamarca','Espanya','França'];


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
        
      ),
      
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
         _crearPassword(),
         Divider(),
         _crearData(context),
         Divider(),
         _crearCropdown(),
         Divider(),
         _crearPersona(),
         Divider(),
        ],
      ),
    );
  } 
  

  _crearInput(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Lletres ${_nom.length}'),
        hintText: 'Nom de l\'usuari',
        labelText: 'Nom',
        helperText: 'Nom complet',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
      ),
      onChanged: (valor){
        _nom = valor;
        print(_nom);
      }
    );
  }

  _crearPersona(){
    return ListTile(
      title: Text('Nom:$_nom'),
      subtitle: Text('Correu: $_email'),
      trailing: Text(_pais),
    );
  }

  _crearPassword(){
     return TextField(
     obscureText: true,
     decoration: InputDecoration(
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(20.0)
       ),
       hintText: 'Password',
       labelText: 'Password',
       suffixIcon: Icon(Icons.lock_open),
       icon: Icon(Icons.lock)
     ),
     onChanged: (valor){
       // setState(() {
       //   _nom = valor;
       // });
     },
   );
  }

  _crearEmail(){
    return TextField(
        keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Correu electrònic',
        labelText: 'Correu electrònic',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
        
      ),
      onChanged: (valor){
        _email = valor;
        print(_nom);
      }
    );
  }

  

  Widget _crearData(BuildContext context){
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDataController,
    );
  }

  void _seleccionaData(BuildContext context) async{
    DateTime? picked = await showDatePicker(
      context: context,
      locale: Locale('es', 'ES'),
      initialDate: DateTime.now(), 
      firstDate: DateTime(2020), 
      lastDate: DateTime(2030)
    );
    if (picked != null){
      setState(() {
        _data = picked.toString();
        _inputFieldDataController.text = _data;
      });
    }
  }

  Widget _crearCropdown(){
    return Row(
      children: [
        Icon(Icons.language),
        SizedBox(width: 30.0,),
        Expanded(
          child: DropdownButton(
            value: _pais,
            items: getOptionDropdown(),
            onChanged: (opcio){
              setState(() {
                _pais = opcio as String;
              });
            },
            ),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getOptionDropdown(){
    List<DropdownMenuItem<String>> llista =[];
    _paisos.forEach((pais){
      llista.add(DropdownMenuItem(
        child: Text(pais),
        value: pais,
      ));
    });
    return llista;
  }
}