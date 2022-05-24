import 'package:dj_pedido/icomoon_icons.dart';
import 'package:flutter/material.dart';

class DjLinhaProdutoComponent extends StatelessWidget {
  const DjLinhaProdutoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '02',
                    style: TextStyle(fontFamily: 'none', fontSize: 18),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Produto 1',
                    style: TextStyle(fontFamily: 'none', fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Icon(Icomoon.edit, color: Colors.grey.shade800),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icomoon.trash,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: Colors.grey.shade400,
          margin: EdgeInsets.only(
            left: 15,
            right: 15,
          ),
        ),
      ],
    );
  }
}
