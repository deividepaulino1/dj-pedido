// ignore_for_file: prefer_const_constructors

import 'package:dj_pedido/data/controllers/login-service.dart';
import 'package:dj_pedido/mobile/components/buttons/action-button/action-button.dart';
import 'package:dj_pedido/mobile/components/input/input.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final _ctrlLogin = TextEditingController();
final _ctrlSenha = TextEditingController();
final _formKey = GlobalKey<FormState>();

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: Adaptive.h(100),
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.1,
                image: AssetImage(
                  'assets/home-bd.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Form(
              key: _formKey,
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
                          keyboardType: TextInputType.emailAddress,
                          controller: _ctrlLogin,
                          label: 'nome',
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return "Usuário inválido";
                            }
                            return text;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DjInput(
                          keyboardType: TextInputType.visiblePassword,
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return "Senha inválida";
                            }
                            return text;
                          },
                          controller: _ctrlSenha,
                          label: 'senha',
                        ),
                      ],
                    ),
                    DJActionButton(
                      acao: () async {
                        _formKey.currentState!.validate();
                        var validarLogin = await LoginService()
                            .fazerLogin1(_ctrlLogin.text, _ctrlSenha.text);
                        _formKey.currentState!.reset();

                        if (validarLogin) {
                          Navigator.pushReplacementNamed(context, '/home');
                        } else {
                          var snackBar = SnackBar(
                              backgroundColor: Colors.brown[400],
                              content: Text(
                                'Login ou senha inválidos, tente novamente',
                                textAlign: TextAlign.center,
                              ));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      nomeBotao: 'Entrar',
                      cor: Color.fromARGB(255, 180, 126, 103),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
