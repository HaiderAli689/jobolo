

import 'package:flutter/cupertino.dart';

class IconsAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;


  const IconsAndText({Key? key,
    required this.icon,
    required this.text,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: iconColor,),
        SizedBox(width: 5,),
        Text( text, )

      ],
    );
  }
}
