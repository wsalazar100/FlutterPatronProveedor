import 'package:flutter/material.dart';

class HeroeProveedor with ChangeNotifier {
  String _nombre = 'Capitan America';

  String get nombre {
    return _nombre;
  }

  set nombre(String value) {
    _nombre = value;
    notifyListeners();
  }


}
