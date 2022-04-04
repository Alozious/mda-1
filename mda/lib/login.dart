import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  
  void validate(){
    if(_formkey.currentState!.validate()){
      print("Not Validated");
    }else{
      print("Validate");
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
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(

                    ),
                    labelText: 'Username',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top :20.0),
                  child: PasswordField(
                    hintText: 'Password',
                    inputDecoration: PasswordDecoration(
                      
                    ),
                    border: PasswordBorder(
                      border: OutlineInputBorder()
                    ),
                    // labelText: "Password",
                    // validator: (value) {
                    //   if(value == null || value.isEmpty){
                    //     return "Required";
                    //   }else{
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black
                    ),
                    child: Text("LOGIN"),
                    onPressed: validate,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}