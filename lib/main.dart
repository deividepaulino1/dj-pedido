import 'package:dj_pedido/mobile/components/qrcode-reader/qrcode.dart';
import 'package:dj_pedido/mobile/pages/checkout-mesa.dart';
import 'package:dj_pedido/mobile/pages/detalhes-mesa.dart';
import 'package:dj_pedido/mobile/pages/home-page.dart';
import 'package:dj_pedido/mobile/pages/init.dart';
import 'package:dj_pedido/mobile/pages/ler-comanda-page.dart';
import 'package:dj_pedido/mobile/pages/login-page.dart';
import 'package:dj_pedido/mobile/pages/produtos-page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DJ-Pedido',
          theme: ThemeData(
            primarySwatch: Colors.brown,
            fontFamily: 'principal',
          ),
          initialRoute: '/',
          routes: {
            '/': ((context) => InicializarPage()),
            '/login': ((context) => LoginPage()),
            '/home': ((context) => HomePage()),
            '/produtos': ((context) => ProdutosPage()),
            '/checkout-mesa': ((context) => CheckoutMesaPage()),
            '/detalhes-mesa': ((context) => DetalhesMesaPage()),
            '/ler-comanda': ((context) => LerComandaPage()),
            '/qr-code': ((context) => QRViewExample()),
          });
    });
  }
}
