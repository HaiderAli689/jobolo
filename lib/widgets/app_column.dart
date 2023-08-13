

import 'package:flutter/material.dart';
import 'package:jobolo_app/widgets/appstyle_text.dart';
import 'package:jobolo_app/widgets/small_button.dart';

import 'icons_and_text.dart';

class AppColumn extends StatelessWidget {

  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 12, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,style: appstyle(16, Colors.black, FontWeight.w500),),
              SmallButton(onPressed: (){},
                  title: 'Open')
            ],
          ),
        ),
        
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconsAndText(icon: Icons.star,
                  text: "4.5  (232)",
                  iconColor: Colors.amber),
              IconsAndText(icon: Icons.location_on,
                  text: "1.7km",
                  iconColor: Color(0xff89dad0)),

              IconsAndText(icon: Icons.access_time_rounded,
                  text: "Delivery",
                  iconColor: Color(0xfffcab88)),
            ],
          ),
        ),

      ],
    );
  }
}
