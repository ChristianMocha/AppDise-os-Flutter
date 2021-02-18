import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Column(

          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAciones(),
          _crearText(),
          _crearText(),
          _crearText(),
          _crearText(),
          _crearText(),
        ],
        
       ),
      ),
    );
  }

  Widget _crearImagen(){
    return  Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_960_720.jpg')
          );
  }

  Widget _crearTitulo() {

    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[

                  Expanded(
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Montañas con un sol', style: estiloTitulo,),
                        SizedBox(height: 7.0,),
                        Text('Montañas en Ecuador', style: estiloSubTitulo),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star, 
                    color: Colors.red,
                    size: 30.0,
                  ),
                  Text('41', style: TextStyle(fontSize: 20.0),)
                ],
              ),
      ),
    );

  }

  Widget _crearAciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'ROUTER'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion( IconData icon, String texto ){
    return Column(
            children: <Widget>[
              Icon( icon, color: Colors.blue, size:40.0 ),
              SizedBox(height: 5.0,),
              Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue) ),
            ],
        );
  }

  Widget _crearText() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Adipisicing aliqua occaecat ullamco nostrud tempor reprehenderit non aliqua cupidatat. Cupidatat ipsum qui consectetur sint sunt enim sit. Nisi eiusmod et officia fugiat amet. Id nisi laborum ipsum dolore ut. Sit Lorem excepteur deserunt tempor duis aliquip sunt irure in labore laboris ad.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}