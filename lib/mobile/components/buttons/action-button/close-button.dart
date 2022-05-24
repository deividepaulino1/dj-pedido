import 'package:flutter/material.dart';

class DjCloseButton extends StatelessWidget {
  const DjCloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      margin: EdgeInsets.only(right: 10, top: 30),
      child: TextButton(
        child: Text(
          'X',
          style: TextStyle(
              fontSize: 16, fontFamily: 'none', fontWeight: FontWeight.w300),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
    );
  }
}
