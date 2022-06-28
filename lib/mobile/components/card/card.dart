import 'package:flutter/material.dart';

class DjCard extends StatelessWidget {
  Widget filho;
  double altura;

  DjCard({
    Key? key,
    required this.filho,
    required this.altura,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      // height: 65,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        border: Border.all(
          width: 0,
          color: Theme.of(context).accentColor,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: filho,
    );
  }
}
