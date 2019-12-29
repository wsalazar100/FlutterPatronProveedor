import 'package:flutter/material.dart';
import 'package:miprovider/pagina/inicio_pagina.dart';
import 'package:miprovider/proveedor/proveedor.dart';
import 'package:provider/provider.dart';

void main() =>{

   runApp(MyApp())

};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
     return MultiProvider( 
       providers: [
          ChangeNotifierProvider(builder: (context) => HeroeProveedor()),
        ],
       child: _crearApp(),
     );

    // return ChangeNotifierProvider( 
    //   builder: (context) => HeroeProveedor(),
    //   child: _crearApp(),
    //   );


  }

  _crearApp(){
    return  MaterialApp(
      title: 'Patron Proveedor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InicioPagina(),
      initialRoute: 'Inicio',
      routes: {
        'Inicio': (BuildContext context) => InicioPagina()
      },

    );
  }

}
