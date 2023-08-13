
import 'package:flutter/material.dart';
import 'package:jobolo_app/screens/auth_screens/login_screen.dart';
import '../../widgets/image_picker.dart';
import 'dart:io';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {



  final _form = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredName = '';
  var _enteredPhone = '';
  var _enteredAddress = '';
  var _enteredConfirmPassword = '';
  var _isUpLoading = false;
  File? _selectedImage;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _confirmPasswordController.dispose();
  }

  void _onSubmit() {
    final isValid = _form.currentState!.validate();
    if (!isValid == null  && _selectedImage == null ) {
      return;
    }
    if(isValid){

      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

    }
    _form.currentState!.save();
    setState(() {
      _isUpLoading = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              Text(  "Let’s Get Started",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 4,),
              Text(  "Create an new account",style: TextStyle(
                  color: Colors.grey
              ),),

              SizedBox(height: 28,),
              Form(
                  key: _form,
                  child: Column(
                    children: [

                        UserImagePicker(
                          onPickImage: (pickedImage) {
                            _selectedImage = pickedImage;
                          },
                        ),
                      SizedBox(height: 16,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Name",

                            prefixIcon: Icon(Icons.person_outline),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),

                          ),
                          enableSuggestions: false,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null ||
                                value
                                    .trim()
                                    .isEmpty ) {
                              return "Please enter a valid email address.";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _enteredName = value!;
                          },
                        ),
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
                            hintText: "Phone no",

                            prefixIcon: Icon(Icons.call_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),

                          ),
                          enableSuggestions: false,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null ||
                                value
                                    .trim()
                                    .isEmpty) {
                              return "Please enter a valid email address.";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _enteredPhone = value!;
                          },
                        ),SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Address",

                            prefixIcon: Icon(Icons.location_on_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)
                            ),

                          ),
                          enableSuggestions: false,
                          keyboardType: TextInputType.streetAddress,
                          validator: (value) {
                            if (value == null ||
                                value
                                    .trim()
                                    .isEmpty ) {
                              return "Please enter a complete address.";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _enteredAddress = value!;
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
                      SizedBox(height: 8,),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Confirm Password",
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
                            _enteredConfirmPassword = value!;
                          },
                        ),

                      SizedBox(height: 16,),
                      if (_isUpLoading) const CircularProgressIndicator(),
                      if (!_isUpLoading)
                      Container(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffBF2F30),
                          ),
                          onPressed: _onSubmit,
                          child: Text("Signup"),
                        ),
                      ),
                      SizedBox(height: 32,),
                        GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginScreen()));

                          },
                          child: RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Have an account?" ,style: TextStyle(
                                    color: Colors.black
                                )
                                ),
                                TextSpan(
                                    text: "  Login",style: TextStyle(
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
    );
  }
}

