import 'package:flutter/material.dart';

import 'package:dj_pedido/icomoon_icons.dart';

class DjAppBarSecundario extends StatelessWidget {
  String titulo;
  IconData icone1;
  IconData icone2;
  double padding;

  DjAppBarSecundario({
    Key? key,
    required this.titulo,
    required this.icone1,
    required this.icone2,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      child: Container(
        padding: EdgeInsets.only(bottom: padding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/logotipo.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  titulo,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'secundaria',
                      color: Colors.grey[700]),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  icone1,
                  size: 30,
                  color: Colors.grey.shade800,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  icone2,
                  size: 30,
                  color: Colors.grey.shade800,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
