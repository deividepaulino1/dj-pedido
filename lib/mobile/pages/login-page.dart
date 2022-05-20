import 'package:dj_pedido/mobile/components/buttons/action-button/action-button.dart';
import 'package:dj_pedido/mobile/components/input/input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.1,
              image: AssetImage(
                'assets/home-bd.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        height: 130,
                        width: 130,
                        // color: Color.fromARGB(255, 180, 126, 103),
                        child: Image.asset('assets/logotipo.png')),
                    Text(
                      'pedido',
                      style: TextStyle(
                          fontFamily: 'pacifico',
                          fontSize: 30,
                          color: Colors.grey[800]),
                    ),
                  ],
                ),
                Column(
                  children: [
                    DjInput(
                      label: 'nome',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DjInput(
                      label: 'senha',
                    ),
                  ],
                ),
                DJActionButton(
                  nomeBotao: 'Entrar',
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
