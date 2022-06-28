import 'package:dj_pedido/mobile/components/buttons/action-button/action-button.dart';
import 'package:dj_pedido/mobile/components/linha-produto/linha-produto-preco.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../icomoon_icons.dart';
import '../components/appbar/app-bar-secundario.dart';
import '../components/buttons/adicionar-produto-pedido.dart';
import '../components/card/card.dart';

class CheckoutMesaPage extends StatelessWidget {
  const CheckoutMesaPage({Key? key}) : super(key: key);

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
            altura: Adaptive.h(80),
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
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color.fromARGB(255, 180, 126, 103),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 180, 126, 103),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Text(
                          'Enviado para preparação',
                          style: TextStyle(
                            fontFamily: 'none',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      DjLinhaProdutoPrecoComponent(),
                      DjLinhaProdutoPrecoComponent(),
                    ],
                  ),
                ),
                DjLinhaProdutoPrecoComponent(
                  codigo: '',
                  nomeProduto: 'Sub Total',
                  precoProduto: 'R\$ 200,00',
                ),
                SizedBox(height: 30),
                DJActionButton(
                  acao: () {},
                  nomeBotao: 'Fechar conta',
                  cor: Color.fromARGB(255, 180, 126, 103),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Adicionar produto',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
