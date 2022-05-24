import 'package:flutter/material.dart';

class DjBtnAdicionarProduto extends StatelessWidget {
  const DjBtnAdicionarProduto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      color: Colors.grey[600],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Text(
                '+',
                style: TextStyle(
                  fontFamily: 'none',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[400],
                  fontSize: 30,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '1',
                style: TextStyle(
                  fontFamily: 'none',
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                '-',
                style: TextStyle(
                  fontFamily: 'none',
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[400],
                  fontSize: 36,
                ),
              ),
            ],
          ),
          Text(
            'Adicionar',
            style: TextStyle(
              fontFamily: 'secundaria',
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }
}
