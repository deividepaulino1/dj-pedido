import 'package:dj_pedido/mobile/components/appbar/app-bar.dart';
import 'package:dj_pedido/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfiguracoesPage extends StatelessWidget {
  ConfiguracoesPage({Key? key}) : super(key: key);

  var themeChanger = new ThemeChanger();

  @override
  Widget build(BuildContext context) {
    themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: DjAppBar('Configurações', context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'tema e luminosidade',
                style: TextStyle(
                  fontFamily: 'secundaria',
                ),
              ),
              Switch(
                  value: themeChanger.isDark(),
                  onChanged: (status) {
                    themeChanger.setDarkMode(status);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
