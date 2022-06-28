// ignore_for_file: prefer_const_constructors

import 'package:dj_pedido/icomoon_icons.dart';
import 'package:dj_pedido/mobile/components/appbar/app-bar-secundario.dart';
import 'package:dj_pedido/mobile/components/categorias/categorias-produtos.dart';
import 'package:dj_pedido/mobile/components/select-produto/select-produto.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProdutosPage extends StatelessWidget {
  const ProdutosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DjAppBarSecundario(
                icone1: Icomoon.home,
                icone2: Icomoon.search2,
                titulo: 'Produtos',
                padding: Adaptive.h(10),
              ),
              DjCategoriasComponent(),
              Column(
                children: [
                  Container(
                    height: Adaptive.h(61.5),
                    color: Theme.of(context).primaryColor,
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
                    color: Theme.of(context).backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Comanda #0001',
                            style: TextStyle(
                              color: Colors.grey.shade100,
                              fontSize: 20,
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
