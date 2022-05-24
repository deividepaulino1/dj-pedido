import 'package:flutter/material.dart';

class DjCategoriasComponent extends StatelessWidget {
  const DjCategoriasComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            //                   <--- left side
            color: Colors.grey.shade600,
            width: 1,
          ),
        ),
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
                color: Colors.grey.shade300,
                border: Border(
                    bottom: BorderSide(
                  color: Colors.grey.shade600,
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
                    color: Colors.grey[800]),
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
                  color: Colors.grey[800]),
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
                  color: Colors.grey[800]),
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
                  color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }
}
