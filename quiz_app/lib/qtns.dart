import 'package:flutter/material.dart';

class Qtns extends StatelessWidget {
  final String qtnText;
  Qtns(this.qtnText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
     child: Text(
      qtnText,
      style: TextStyle(
        fontSize: 28,
      ),
      textAlign: TextAlign.center,
    ),
    );
  }
}
