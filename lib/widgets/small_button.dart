
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({Key? key, required this.onPressed, required this.title,}) : super(key: key);

  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 22,
          width: 60,
          decoration: BoxDecoration(
              color: Color(0xffBF2F30),
              borderRadius: BorderRadius.circular(4)
          ),
          child: Center(child: Text(title,style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 12
          ),)),
        )
      ],
    );
  }
}
