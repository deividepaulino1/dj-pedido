// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DJActionButton extends StatelessWidget {
  String nomeBotao;
  Color cor;
  void Function() acao;

  DJActionButton({
    Key? key,
    required this.nomeBotao,
    required this.cor,
    required this.acao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
        onPressed: acao,
        child: Text(
          nomeBotao,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'secundaria',
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
