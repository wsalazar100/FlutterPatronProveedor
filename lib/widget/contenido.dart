import 'package:flutter/material.dart';
import 'package:miprovider/proveedor/proveedor.dart';
import 'package:provider/provider.dart';

class ContenidoPrincipal extends StatelessWidget {
  const ContenidoPrincipal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroPrv = Provider.of<HeroeProveedor>(context);
    return Consumer<HeroeProveedor>(
      builder: (context, heroPrv, _) => _crearTituloCentral(heroPrv.nombre),
    );
  }

  Widget _crearTituloCentral(String titulo) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text(titulo)],
    ));
  }
}
