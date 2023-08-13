import 'package:flutter/material.dart';
import 'package:jobolo_app/widgets/appstyle_text.dart';
import 'package:jobolo_app/widgets/list_of_products.dart';
import 'package:jobolo_app/widgets/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xffBF2F30)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Icon(Icons.shopping_cart_outlined,color: Colors.white,),
            SizedBox(width: 8,),
            Text('Cart View',style: appstyle(14, Colors.white, FontWeight.w400),),
            Text('(12)',style: appstyle(14, Colors.white, FontWeight.w400))
          ],),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductWidget(),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search,color: Colors.grey,),
                    filled: true,
                    fillColor: Color(0xffF5F5F5),
                    hintText: 'Search products',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text('Products',style: appstyle(18, Colors.black, FontWeight.w500),),
            ),
            SizedBox(height: 22,),
            ListOfProducts(),


          ],
        ),
      ),
    );
  }
}
