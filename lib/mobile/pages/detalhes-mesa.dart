import 'package:dj_pedido/icomoon_icons.dart';
import 'package:dj_pedido/mobile/components/appbar/app-bar-secundario.dart';
import 'package:dj_pedido/mobile/components/buttons/adicionar-produto-pedido.dart';
import 'package:dj_pedido/mobile/components/card/card.dart';
import 'package:dj_pedido/mobile/components/linha-produto/linha-produto.dart';
import 'package:flutter/material.dart';

class DetalhesMesaPage extends StatelessWidget {
  const DetalhesMesaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DjAppBarSecundario(
            titulo: 'Mesa 2',
            icone1: Icomoon.home,
            icone2: Icomoon.admesa,
            padding: 10,
          ),
          DjCard(
            altura: 530,
            filho: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          'No. 2456',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'secundaria',
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 42,
                        )
                      ],
                    ),
                  ),
                ),
                DjBtnAdicionarProdutoPedido(),
                DjLinhaProdutoComponent(),
                DjLinhaProdutoComponent(),
                DjLinhaProdutoComponent(),
                DjLinhaProdutoComponent(),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Enviar Pedido',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
