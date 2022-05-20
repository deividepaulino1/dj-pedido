import 'package:flutter/material.dart';

class DJActionButton extends StatelessWidget {
  String nomeBotao = 'Nome Vazio';
  DJActionButton({
    Key? key,
    required this.nomeBotao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 180, 126, 103),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextButton(
        onPressed: () {},
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
