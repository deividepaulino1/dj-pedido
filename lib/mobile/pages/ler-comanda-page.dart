import 'package:dj_pedido/mobile/components/buttons/action-button/action-button.dart';
import 'package:flutter/material.dart';

class LerComandaPage extends StatelessWidget {
  const LerComandaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(40),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/logotipo.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Comanda',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'secundaria',
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  DJActionButton(
                    acao: () {
                      Navigator.pushNamed(context, '/qr-code');
                    },
                    nomeBotao: 'Nova comanda',
                    cor: Colors.grey.shade600,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DJActionButton(
                    acao: () {},
                    nomeBotao: 'Ler Comanda',
                    cor: Colors.grey.shade600,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
