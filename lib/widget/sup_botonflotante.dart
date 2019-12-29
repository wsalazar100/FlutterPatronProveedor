import 'package:flutter/material.dart';
import 'package:miprovider/proveedor/proveedor.dart';
import 'package:provider/provider.dart';

class SuperBotonFlotante extends StatelessWidget {
  const SuperBotonFlotante({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final heroPrv = Provider.of<HeroeProveedor>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,

      children: <Widget>[
        _btnUno(heroPrv),
        SizedBox(height: 10,),
        _btnDos(heroPrv),
      ],
    );
  }

  _btnUno(HeroeProveedor heroPrv) {
    return FloatingActionButton(
      child: Icon(Icons.access_time),
      backgroundColor: Colors.red,
      onPressed: () {  heroPrv.nombre = 'Javier';},
    );
  }

  _btnDos(HeroeProveedor heroPrv) {
    return FloatingActionButton(
      child: Icon(Icons.home),
      backgroundColor: Colors.blue,
      onPressed: () { heroPrv.nombre = 'William';},
    );
  }
}
