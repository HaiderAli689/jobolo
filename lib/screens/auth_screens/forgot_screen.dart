


import 'package:flutter/material.dart';

import 'forgot_screen2.dart';


class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {



  final _form = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  var _enteredEmail = '';
  var _isUpLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
  }

  void _onSubmit() {
    final isValid = _form.currentState!.validate();
    if(isValid){

      Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyForgotScreen()));
      setState(() {
        _isUpLoading = false;
      });
    }

    _form.currentState!.save();
    setState(() {
      _isUpLoading = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 1,
        title: Text('Forgot Password',style: TextStyle(
          color: Colors.black,

        ),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 16,),
                Text( 'Enter your registered email so we should help you to reset password',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400),),

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


                        SizedBox(height: 16,),

                        Container(
                          height: 60,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffBF2F30),
                            ),
                            onPressed:  _onSubmit,

                            child: Text("Continue"),
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

