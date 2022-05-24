// ignore_for_file: prefer_const_constructors

import 'package:dj_pedido/icomoon_icons.dart';
import 'package:dj_pedido/mobile/components/appbar/app-bar-secundario.dart';
import 'package:dj_pedido/mobile/components/categorias/categorias-produtos.dart';
import 'package:dj_pedido/mobile/components/select-produto/select-produto.dart';
import 'package:flutter/material.dart';

class ProdutosPage extends StatelessWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DjAppBarSecundario(
                icone1: Icomoon.home,
                icone2: Icomoon.search2,
                titulo: 'Produtos',
                padding: 100,
              ),
              DjCategoriasComponent(),
              Column(
                children: [
                  Container(
                    height: 360,
                    color: Colors.white,
                    child: ListView(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                        DjSelectProdutoComponent(),
                      ],
                    ),
                  ),
                  Container(
                    height: 78,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade700,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mesa 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'secundaria',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Icon(
                                Icomoon.pedidopronto,
                                size: 24,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                '04',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'none',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
