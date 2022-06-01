import 'package:dj_pedido/mobile/components/qrcode-reader/qrcode.dart';
import 'package:dj_pedido/mobile/pages/checkout-mesa.dart';
import 'package:dj_pedido/mobile/pages/detalhes-mesa.dart';
import 'package:dj_pedido/mobile/pages/home-page.dart';
import 'package:dj_pedido/mobile/pages/init.dart';
import 'package:dj_pedido/mobile/pages/ler-comanda-page.dart';
import 'package:dj_pedido/mobile/pages/login-page.dart';
import 'package:dj_pedido/mobile/pages/produtos-page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
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
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return PageTransition(
                child: InicializarPage(),
                type: PageTransitionType.fade,
                settings: settings,
              );
            case '/login':
              return PageTransition(
                child: LoginPage(),
                type: PageTransitionType.fade,
                settings: settings,
              );
            case '/home':
              return PageTransition(
                child: HomePage(),
                type: PageTransitionType.bottomToTop,
                settings: settings,
                reverseDuration: Duration(milliseconds: 300),
              );
            case '/produtos':
              return PageTransition(
                child: ProdutosPage(),
                type: PageTransitionType.topToBottom,
                settings: settings,
                reverseDuration: Duration(milliseconds: 300),
              );
            case '/checkout-mesa':
              return PageTransition(
                child: CheckoutMesaPage(),
                type: PageTransitionType.rightToLeft,
                settings: settings,
                reverseDuration: Duration(milliseconds: 300),
              );
            case '/detalhes-mesa':
              return PageTransition(
                child: DetalhesMesaPage(),
                type: PageTransitionType.leftToRight,
                settings: settings,
                reverseDuration: Duration(milliseconds: 300),
              );
            case '/ler-comanda':
              return PageTransition(
                child: LerComandaPage(),
                type: PageTransitionType.bottomToTop,
                settings: settings,
                reverseDuration: Duration(milliseconds: 300),
              );
            case '/qr-code':
              return PageTransition(
                child: QRViewExample(),
                type: PageTransitionType.topToBottom,
                settings: settings,
                reverseDuration: Duration(milliseconds: 300),
              );
            default:
              return null;
          }
        },
        debugShowCheckedModeBanner: false,
        title: 'DJ-Pedido',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          fontFamily: 'principal',
        ),
        initialRoute: '/',
      );
    });
  }
}
