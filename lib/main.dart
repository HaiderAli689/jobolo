
import 'package:flutter/material.dart';
import 'package:jobolo_app/provider/image_provider.dart';
import 'package:jobolo_app/screens/HomeScreen.dart';
import 'package:jobolo_app/screens/direct_store_or%20_browse.dart';
import 'package:jobolo_app/screens/logo_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
      create: (context) => ImageProviderModel(),
      child
      : MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
          }
  }

