

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_column.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)),
          child: Image.asset(
            'assets/images/shop.png',
            width: double.infinity,
            fit: BoxFit.cover,
            height: 270,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Center(
                    child: Icon(
                      Icons.arrow_back,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Icon(Icons.favorite_outline),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 230, left: 40),
          height: 80,
          width: 330,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Color(0xffF3F3F3)),
              borderRadius: BorderRadius.circular(4)),
          child: AppColumn(text: 'Sherine store'),
        ),
      ],
    );
  }
}
