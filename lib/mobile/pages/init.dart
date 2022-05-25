import 'package:dj_pedido/mobile/pages/home-page.dart';
import 'package:dj_pedido/mobile/pages/login-page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/controllers/login-service.dart';

class InicializarPage extends StatefulWidget {
  const InicializarPage({Key? key}) : super(key: key);

  @override
  State<InicializarPage> createState() => _InicializarPageState();
}

class _InicializarPageState extends State<InicializarPage> {
  @override
  void initState() {
    super.initState();
    verificarToken().then((value) {
      if (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

Future<bool> verificarToken() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  if (sharedPreferences.getString('token') != null) {
    return true;
  } else {
    return false;
  }
}
