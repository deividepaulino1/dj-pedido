import 'package:flutter/material.dart';

import 'package:dj_pedido/icomoon_icons.dart';

class DjLinhaProdutoPrecoComponent extends StatelessWidget {
  String codigo;
  String nomeProduto;
  String precoProduto;

  DjLinhaProdutoPrecoComponent({
    Key? key,
    this.codigo = '02',
    this.nomeProduto = 'Produto 1',
    this.precoProduto = 'R\$ 100',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    codigo,
                    style: TextStyle(fontFamily: 'none', fontSize: 18),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    nomeProduto,
                    style: TextStyle(fontFamily: 'none', fontSize: 18),
                  ),
                ],
              ),
              Text(
                precoProduto,
                style: TextStyle(fontFamily: 'none', fontSize: 18),
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
