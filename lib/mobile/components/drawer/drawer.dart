import 'package:flutter/material.dart';

class DjDrawer extends Drawer {
  DjDrawer(context)
      : super(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Perfil',
                            style: TextStyle(fontFamily: 'secundaria'),
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.settings),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Configurações',
                            style: TextStyle(fontFamily: 'secundaria'),
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/', (route) => false);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.exit_to_app_outlined),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Sair',
                            style: TextStyle(fontFamily: 'secundaria'),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        );
}
