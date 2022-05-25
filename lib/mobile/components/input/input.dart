import 'package:flutter/material.dart';

class DjInput extends StatelessWidget {
  String label;
  TextEditingController controller;
  final String Function(String?) validator;
  TextInputType keyboardType;

  DjInput({
    Key? key,
    this.label = '',
    required this.controller,
    required this.validator,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, bottom: 5),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          TextFormField(
            keyboardType: keyboardType,
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
                // label: Text('Label aqui'),
                filled: true,
                fillColor: Color.fromARGB(181, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ],
      ),
    );
  }
}
