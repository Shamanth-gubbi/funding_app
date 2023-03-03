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
          'ABHUDAY',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
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
            SizedBox(
                height: 40,
                child: Text(
                  'Are you ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      'A Student',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.person),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => OptionScreenStudent()));
                // TODO: Add signup logic
              },
            ),
            SizedBox(
                height: 40,
                child: Text(
                  'OR ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      'A Trust / Sponsor',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.attach_money_rounded),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => OptionScreenSponsor())
                    // TODO: Add signup logic
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/////////////////////////////////////

class OptionScreenSponsor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 40,
                child: Text(
                  'Welcome Sponsor! ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      'Login ',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LoginScreen())
                  // TODO: Add signup logic
                );
                // TODO: Add signup logic
              },
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
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

/////////////////////
class OptionScreenStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 40,
                child: Text(
                  'Welcome Student! ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      'Login ',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
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
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF8ED0FF)),
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
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
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


/////////////

////////////
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,


              decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintStyle: TextStyle(fontSize: 14),
                  hintText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)
              ),


            )



        ),


            SizedBox(height: 30,),


            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
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
              onPressed: () {
                // TODO: Add signup logic
              },
            ),





            SizedBox(height: 60 ,
            child: Center(
                child: Text('OR' , style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                    fontWeight: FontWeight.w600

                ) )
            )
            ,),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
                ),
                backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xF3F4F7)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Row(

                  children: [

                    Text(
                      'Google ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600),
                    ),

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