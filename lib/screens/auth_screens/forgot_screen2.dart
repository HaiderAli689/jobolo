




import 'package:flutter/material.dart';


class VerifyForgotScreen extends StatefulWidget {
  const VerifyForgotScreen({Key? key}) : super(key: key);

  @override
  State<VerifyForgotScreen> createState() => _VerifyForgotScreenState();
}

class _VerifyForgotScreenState extends State<VerifyForgotScreen> {

  var _ifVerified = true;
  var _enterednumbre = '';
  var _enteredPassword = '';
  var _enteredConfirmPassword = '';
  var _isUpLoading = false;
  final _form = GlobalKey<FormState>();

  void _submite(){

    final isValid = _form.currentState!.validate();

    if (!isValid == null ) {
      return;
    }

    _form.currentState!.save();
    setState(() {
      _isUpLoading = false;
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
          padding: const EdgeInsets.symmetric(horizontal: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(_ifVerified)
              Center(child: Text('Enter Code that has been sent to ab.........com',style: TextStyle(
                fontSize: 14
              ),),),
              SizedBox(height: 16,),
              if(!_ifVerified)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),
                  ],
                ),
              if(_ifVerified)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value == null || value.trim().length != 1){
                            return "Please enter a valid OTP.";
                          }
                        },
                        onSaved: (value){
                          _enterednumbre = value!;
                        },
                      ),
                    ),
                  ],
                ),

              SizedBox(height: 22,),
              if(!_ifVerified)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.verified,color: Colors.green,),
                  SizedBox(width: 6,),
                  Text('OTP Verified'),
                ],
              ),
              SizedBox(height: 16,),
              if(_ifVerified)
              Text('Resend code in 50 sec'),
              SizedBox(height: 16,),
              if(_isUpLoading) CircularProgressIndicator(),

              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffBF2F30),
                  ),
                  onPressed: (){
                    setState(() {
                      _ifVerified = !_ifVerified;
                    });
                  },
                  child: Text(_ifVerified ? "Verify" : "Continue"),
                ),
              ),
              SizedBox(height: 36,),
              if(!_ifVerified)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text('Create new password'),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26,),
              if(!_ifVerified)
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
              if(!_ifVerified)
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
            ],
          ),
        ),
      )
    );
  }
}

