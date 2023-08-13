
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key,  required this.title, required this.fontWeight, required this.onPressed}) : super(key: key);

  final void Function() onPressed;
  final String title;
  final FontWeight fontWeight;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffBF2F30),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(child: Text(title,style: TextStyle(
            color: Colors.white,
            fontWeight: fontWeight,
            fontSize: 14
          ),)),
        )
      ],
    );
  }
}
