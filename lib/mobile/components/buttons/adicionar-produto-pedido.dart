import 'package:flutter/material.dart';

class DjBtnAdicionarProdutoPedido extends StatelessWidget {
  const DjBtnAdicionarProdutoPedido({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: Theme.of(context).accentColor,
              size: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Add Produto',
              style: TextStyle(
                fontFamily: 'none',
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
        ));
  }
}
