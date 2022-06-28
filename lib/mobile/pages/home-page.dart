import 'package:dj_pedido/icomoon_icons.dart';
import 'package:dj_pedido/mobile/components/appbar/app-bar.dart';
import 'package:dj_pedido/mobile/components/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int columnCount = 3;

    return Scaffold(
      endDrawer: DjDrawer(context),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: DjAppBar('Mesas', context),
      ),
      body: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(12, (index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 375),
              columnCount: columnCount,
              child: ScaleAnimation(
                child: FadeInAnimation(
                  child: Center(
                    child: GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(Adaptive.h(1)),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          boxShadow: [
                            (index > 0
                                ? BoxShadow(
                                    color: Colors.grey.withOpacity(0.9),
                                  )
                                : BoxShadow(
                                    color: Colors.black.withOpacity(0.6),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 6), // changes position of shadow
                                  ))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: (index > 0
                              ? Color.fromARGB(25, 105, 123, 115)
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
                                      color: Colors.brown),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/detalhes-mesa');
                                  },
                                  child: Icon(
                                    Icomoon.ocupado,
                                    color: Colors.white,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/checkout-mesa');
                                  },
                                  child: Icon(
                                    Icomoon.pedidopronto,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 5),
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        if (index > 0) {
                          Navigator.pushNamed(context, '/ler-comanda');
                        } else {
                          Navigator.pushNamed(context, '/produtos');
                        }
                      },
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
