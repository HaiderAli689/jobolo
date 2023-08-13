
import 'package:flutter/material.dart';
import 'package:jobolo_app/screens/HomeScreen.dart';
import 'package:jobolo_app/screens/auth_screens/sign_up_screen.dart';
import 'package:jobolo_app/screens/direct_store_or%20_browse.dart';
import 'package:jobolo_app/screens/auth_screens/forgot_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../logo_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  final _form = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _isUpLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void _onSubmit() async{
    final isValid = _form.currentState!.validate();

    if (!isValid == null ) {
      return;
    }
    if(isValid){

      var sharedprefs = await SharedPreferences.getInstance();

      sharedprefs.setBool(LogoScreenState.KeyLogin, true);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DirectStoreBrowserScreen()));

    }

    _form.currentState!.save();
    setState(() {
      _isUpLoading = true;
    });
    }


    @override
    Widget build(BuildContext context) {
      return Scaffold(

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png', width: 200, height: 100,),
                  ),
                  SizedBox(height: 22,),
                    Text( 'Welcome to jobolo',style: TextStyle(
                      fontSize: 16,
                  fontWeight: FontWeight.bold),),
                  SizedBox(height: 4,),
                    Text( 'Sign in to continue' ,style: TextStyle(
                    color: Colors.grey
                  ),),

                  SizedBox(height: 28,),
                  Form(
                      key: _form,
                      child: Column(
                        children: [

                          SizedBox(height: 8,),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter email",

                              prefixIcon: Icon(Icons.person_outline),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                              ),

                            ),
                            enableSuggestions: false,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  value
                                      .trim()
                                      .isEmpty ||
                                  !value.contains('@')) {
                                return "Please enter a valid email address.";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _enteredEmail = value!;
                            },
                          ),
                          SizedBox(height: 8,),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.lock_outline_rounded),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)
                                )
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            enableSuggestions: false,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value
                                      .trim()
                                      .length < 6) {
                                return "Password must be at least 6 characters long..";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _enteredPassword = value!;
                            },
                          ),

                          SizedBox(height: 12,),
                          Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotScreen()));
                                }, child: Text("Forgot Password?",style: TextStyle(
                              color:  Color(0xffBF2F30)
                            ),)),
                          ),

                          SizedBox(height: 16,),
                          if(_isUpLoading) const CircularProgressIndicator(),
                          if (!_isUpLoading)
                          Container(
                            height: 60,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffBF2F30),
                              ),
                              onPressed: _onSubmit,
                              child: Text("Login"),
                            ),
                          ),
                          SizedBox(height: 32,),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUpScreen()));
                            },
                            child: RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                    text:"Don’t have a account?" ,style: TextStyle(
                                  color: Colors.black
                                )
                            ),
                                    TextSpan(
                                        text: " Sign up",style: TextStyle(
                                        color: Color(0xffBF2F30),
                                      fontWeight: FontWeight.bold
                                    )

                                )
                              ]
                            )
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      );
    }
  }

