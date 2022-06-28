import 'package:flutter/material.dart';

class DjCategoriasComponent extends StatelessWidget {
  const DjCategoriasComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        border: Border(
            bottom: BorderSide(
              //                   <--- left side
              color: Theme.of(context).accentColor,
              width: 0.4,
            ),
            top: BorderSide(
              color: Theme.of(context).accentColor,
              width: 0.4,
            )),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 120,
            height: 20,
            margin: EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.grey.shade500,
                  width: 7,
                ))),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Destaque',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'none',
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Pizza Salgada',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'none',
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).accentColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Pizza Doce',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'none',
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).accentColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Categoria 3',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'none',
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).accentColor),
            ),
          ),
        ],
      ),
    );
  }
}
