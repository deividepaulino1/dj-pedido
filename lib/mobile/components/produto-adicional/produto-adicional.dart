import 'package:flutter/material.dart';

class DjAdicionalComponent extends StatelessWidget {
  const DjAdicionalComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            //                   <--- left side
            color: Colors.grey.shade600,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade600,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Integral',
                style: TextStyle(
                  fontFamily: 'none',
                  fontSize: 18,
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
    );
  }
}
