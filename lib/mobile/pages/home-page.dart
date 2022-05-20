import 'package:dj_pedido/icomoon_icons.dart';
import 'package:dj_pedido/mobile/components/appbar/app-bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: DjAppBar(),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(7, (index) {
          return Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  (index > 0
                      ? BoxShadow(
                          color: Colors.grey.withOpacity(0),
                        )
                      : BoxShadow(
                          color: Colors.black.withOpacity(0.6),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 6), // changes position of shadow
                        ))
                ],
                borderRadius: BorderRadius.circular(10),
                color: (index > 0
                    ? Color.fromARGB(255, 105, 123, 115)
                    : Color.fromARGB(255, 180, 126, 103)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        '$index',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icomoon.ocupado,
                        color: Colors.white,
                      ),
                      Icon(
                        Icomoon.pedidopronto,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
