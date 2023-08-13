
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobolo_app/widgets/appstyle_text.dart';

import 'app_column.dart';
import 'icons_and_text.dart';

class ListOfProducts extends StatelessWidget {
  const ListOfProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.only(top: 12,left: 16,right: 16,bottom: 12),
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(4)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Image.asset('assets/images/img.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12,top: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Product title ', style: appstyle(16, Colors.black, FontWeight.w400),),
                                SizedBox(width: 120,),
                                Icon(Icons.favorite_outline)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Text('Estimated price:  25.00', style: appstyle(16, Colors.black, FontWeight.w400),),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconsAndText(icon: Icons.star,
                                    text: "4.5  (232)",
                                    iconColor: Colors.amber),
                                SizedBox(width: 120,),
                                Text('1', style: appstyle(16, Color(0xffBF2F30), FontWeight.w400)),
                                SizedBox(width: 12,),
                                Container(
                                  height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      color: Color(0xffBF2F30),
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Icon(Icons.add,color: Colors.white,))
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            );
          }),
    );
  }
}
