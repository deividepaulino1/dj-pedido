import 'package:flutter/material.dart';

class DjAppBar extends AppBar {
  DjAppBar(titulo, context)
      : super(
          toolbarHeight: 100,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          iconTheme: IconThemeData(color: Colors.grey[700]),
          title: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/logotipo.png'),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                titulo,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'secundaria',
                    color: Colors.grey[800]),
              ),
            ],
          ),
        );
}
