import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mda/login.dart';
import 'package:passwordfield/passwordfield.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);



  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  void validate(){
    if(_formkey.currentState!.validate()){
      print( "Not Validated");
    }else{
      print("Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: 'First Name',
                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(bottom:20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: 'Last Name',
                    ),
                  ),
                ),
                
                
                Padding(
                  padding: EdgeInsets.only(bottom:20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      labelText: 'Username',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom :20.0),
                  child: PasswordField(
                    hintText: 'Password',
                    inputDecoration: PasswordDecoration(
                      
                    ),
                    border: PasswordBorder(
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom :20.0),
                  child: PasswordField(
                    hintText: 'Confirm Password',
                    inputDecoration: PasswordDecoration(
                      
                    ),
                    border: PasswordBorder(
                      border: OutlineInputBorder()
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: RichText(
                    text: TextSpan(
                      children : <TextSpan>[
                        TextSpan (
                          text: "By clicking Signup, you're agreeing to our ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan (
                          style: TextStyle(color: Colors.blue),
                          text: "Privacy Policy",
                          recognizer: TapGestureRecognizer()..onTap = () async{
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => const Login()),
                              );
                            },
                        ),
                        TextSpan (
                          text: " and ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan (
                          style: TextStyle(color: Colors.blue),
                          text: "Terms & Conditions",
                          recognizer: TapGestureRecognizer()..onTap = () async{
                              Navigator.push(
                                context, MaterialPageRoute(builder: (context) => const Login()),
                              );
                            },
                        ),
                      ]
                    )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black
                  ),
                    child: Text ("SIGN UP"),
                    onPressed: validate,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: RichText(
                    text: TextSpan(
                      children : <TextSpan>[
                        const TextSpan (
                          text: "Already have an account? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan (
                          style: const TextStyle(color: Colors.blue),
                          text: "Login",
                          recognizer: TapGestureRecognizer()..onTap = () async{
                              Navigator.pushNamed(
                                context, "login",
                              );
                            },
                        ),
                      ]
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

