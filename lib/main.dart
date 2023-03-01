import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading and Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyLoadingScreen(),
    );
  }
}

class MyLoadingScreen extends StatefulWidget {
  @override
  _MyLoadingScreenState createState() => _MyLoadingScreenState();
}

class _MyLoadingScreenState extends State<MyLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MyLoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'SCHOLARSHIP \n APP',
          style: TextStyle(fontSize: 30 , color:Colors.white ,fontWeight:FontWeight.w800 )  ,textAlign:TextAlign.center,


        ),
      ),
    );
  }
}

class MyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      'Login',
                      style: TextStyle(fontSize: 30 , color:Colors.white , fontWeight:FontWeight.w600),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              onPressed: () {
                // TODO: Add signup logic
              },


            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      'Sign Up',
                      style: TextStyle(fontSize: 30 , color:Colors.white , fontWeight:FontWeight.w600),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              onPressed: () {
                // TODO: Add signup logic
              },


            ),
          ],
        ),
      ),
    );
  }
}
