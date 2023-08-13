import 'package:flutter/material.dart';
import 'package:jobolo_app/widgets/appstyle_text.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import '../provider/image_provider.dart';
import '../widgets/buttons.dart';

class DirectStoreBrowserScreen extends StatefulWidget {
  const DirectStoreBrowserScreen({Key? key}) : super(key: key);

  @override
  State<DirectStoreBrowserScreen> createState() =>
      _DirectStoreBrowserScreenState();
}

class _DirectStoreBrowserScreenState extends State<DirectStoreBrowserScreen> {
  @override
  Widget build(BuildContext context) {
    final imageProvider =
        Provider.of<ImageProviderModel>(context, listen: true);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Evening'),
                        Text(
                          'Mr. Irfan',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 52,
              ),
              Text(
                'Have a specific shop / store code?',
                style: appstyle(18, Colors.black, FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Enter code to directly open shop/store',
                style: appstyle(14, Colors.black, FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF5F5F5),
                    hintText: 'e.g sh26333',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
              SizedBox(
                height: 22,
              ),
              Button(
                title: 'Next',
                fontWeight: FontWeight.w500,
                onPressed: () {},
              ),
              SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'OR',
                    style: appstyle(18, Colors.grey, FontWeight.w400),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF6F6F6),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 36)
                ),
                child: Text(
                  'Browse Shops',
                  style: appstyle(14, Colors.black, FontWeight.bold),
                ),
              ),
              SizedBox(height: 54,),
              Image.asset('assets/images/browse.png',width: 260,height: 260,)
            ],
          ),
        ),
      ),
    );
  }
}
