import 'package:dj_pedido/mobile/pages/home-page.dart';
import 'package:dj_pedido/mobile/pages/login-page.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DJ-Pedido',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'principal',
      ),
      home: const HomePage(),
    );
  }
}
