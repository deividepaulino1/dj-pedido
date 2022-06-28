import 'package:dj_pedido/mobile/components/card/card.dart';
import 'package:dj_pedido/mobile/components/modals/adicionais-modal.dart';
import 'package:flutter/material.dart';

class DjSelectProdutoComponent extends StatelessWidget {
  const DjSelectProdutoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DjCard(
        filho: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Theme.of(context).accentColor),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Lanche X-Salada',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'none',
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).accentColor),
                  ),
                ],
              ),
              TextButton(
                child: Text(
                  'Adicionais',
                  style: TextStyle(
                    fontFamily: 'none',
                    color: Theme.of(context).accentColor,
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return AdicionaisModal();
                    },
                  );
                },
              ),
            ],
          ),
        ),
        altura: 65);
  }
}
