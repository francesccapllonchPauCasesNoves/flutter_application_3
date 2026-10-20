import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0)

        ],
      )
    );
  }

  Widget _cardTipus1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        children: [
          ListTile( 
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Targeta1'),
            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset Body Type sheets. It has survived not only many decades, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised thanks to these sheets and more recently with desktop publishing software like Aldus PageMaker and Microsoft Word including versions of Lorem Ipsum.'),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text('Ok')),
              TextButton(onPressed: (){}, child: Text('Cancelar')),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipus2(){
    final targeta = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: [

          FadeInImage(placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage( 'https://fastly.picsum.photos/id/237/600/300.jpg?hmac=iRVPLLVQxFogSDvoPLrs3stJmz9g636YRQiWCDrU5MM'),
          fadeInDuration: Duration(milliseconds: 100),
          height: 250,
          fit: BoxFit.cover,

          ),


          /* Image(
            image: NetworkImage('https://picsum.photos/id/237/600/300'),
          ), */


          Container(
            child: Text('Titol de la imatge'),
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
    return Container(
      child: ClipRRect(
        child: targeta,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ],
        color: Colors.white
      )
    );
  }
}