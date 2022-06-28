// ignore_for_file: prefer_const_constructors

import 'package:dj_pedido/mobile/components/buttons/action-button/close-button.dart';
import 'package:dj_pedido/mobile/components/buttons/adicionar-produto.dart';
import 'package:dj_pedido/mobile/components/produto-adicional/extras-adicional.dart';
import 'package:dj_pedido/mobile/components/produto-adicional/produto-adicional.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AdicionaisModal extends StatelessWidget {
  const AdicionaisModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: Adaptive.h(100),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  DjCloseButton(),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(right: 40, left: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              //                   <--- lado esquerdo
                              color: Colors.grey.shade600,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Titulo do produto',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'none',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'none',
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'R\$150 un',
                              style: TextStyle(
                                fontFamily: 'none',
                                fontSize: 16,
                                color: Colors.brown[400],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: Adaptive.h(1),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Adaptive.h(1),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Adicionais',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'secundaria',
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Massas',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'none',
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 20,
                                  child: Text(
                                    'Obrigatório',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'none',
                                        fontWeight: FontWeight.w300),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.brown[400],
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: Adaptive.h(25),
                        margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              DjAdicionalComponent(),
                              SizedBox(
                                height: 10,
                              ),
                              DjAdicionalComponent(),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 15,
                              top: 15,
                            ),
                            child: Text(
                              'Extras - até 3',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'none',
                              ),
                            ),
                          ),
                        ],
                      ),
                      //chegou até aqui
                      Container(
                        height: Adaptive.h(30),
                        margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(Adaptive.h(1)),
                          child: Column(
                            children: [
                              DjExtrasAdicionalComponent(),
                              DjExtrasAdicionalComponent(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: DjBtnAdicionarProduto(),
          ),
        ],
      ),
    );
  }
}
