import 'package:flutter/material.dart';
import 'package:miprovider/proveedor/proveedor.dart';
import 'package:miprovider/widget/contenido.dart';
import 'package:miprovider/widget/sup_botonflotante.dart';
import 'package:provider/provider.dart';

class InicioPagina extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final heroPrv = Provider.of<HeroeProveedor>(context);
    return Scaffold(
      appBar: AppBar(title: Text(heroPrv.nombre,)),
      body: ContenidoPrincipal(),
      floatingActionButton: SuperBotonFlotante(),
    );
  }
}