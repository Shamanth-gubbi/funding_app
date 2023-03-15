import 'dart:async';
import 'package:flutter/material.dart';


class LoginScreenStudent extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreenStudent> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _onLoginPressed() {
    String email = emailController.text;
    String password = passwordController.text;

    // TODO: Use email and password variables as needed

    print('Email: $email');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
                height: 40,
                child: Text(
                  'Log in for sponsors ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child:
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintStyle: TextStyle(fontSize: 14),
                    hintText: 'Email',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)

                ),
              ),
            ),

            SizedBox(height: 16.0),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintStyle: TextStyle(fontSize: 14),
                      hintText: 'Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)
                  ),
                )
            ),

            TextButton(
              child:
              Text('Forgot password ' ,textAlign: TextAlign.left,style: TextStyle( color: Colors.black26),),
              onPressed: () {  },),


            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),
                backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF42B0FF)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Log in ',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600))
                  ],
                ),
              ),
              onPressed: _onLoginPressed,

            ),
          ],
        ),
      ),
    );
  }
}
