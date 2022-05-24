import 'package:flutter/material.dart';

class DjExtrasAdicionalComponent extends StatelessWidget {
  const DjExtrasAdicionalComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontFamily: 'none',
                        fontSize: 34,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontFamily: 'none',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontFamily: 'none',
                        fontSize: 34,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Queijo Catupiry',
                    style: TextStyle(
                      fontFamily: 'none',
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              Text(
                'R\$ 15,00',
                style: TextStyle(
                  fontFamily: 'none',
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 40),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 1,
          color: Colors.grey.shade400,
        )
      ],
    );
  }
}
