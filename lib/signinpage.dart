import 'dart:async';
import 'package:flutter/material.dart';


class SignupScreenSponsor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView( child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 40,
                child: Text(
                  'Sign up for sponsors ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                      labelText: 'Name',
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintStyle: TextStyle(fontSize: 14),
                      hintText: 'Name',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)
                  ),

                )

            ),
            SizedBox(height: 30,),

            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
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
                  keyboardType: TextInputType.emailAddress,

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
            SizedBox(height: 30,),

            SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      filled: true,
                      fillColor: Colors.grey[200],
                      hintStyle: TextStyle(fontSize: 14),
                      hintText: 'Re-enter Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)
                  ),
                )
            ),
            SizedBox(height: 30,),




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
                        'Sign in ',
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

                    ImageIcon(
                      AssetImage('android/app/src/main/assets/images/googleicon.png'),
                      size: 24.0, // set the size of the icon
                    ),
                    SizedBox(width: 20,),

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
        ),)
      ),
    );
  }
}


class SignupScreenStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
       child: SingleChildScrollView(  child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           SizedBox(
               height: 40,
               child: Text(
                 'Sign up for student ',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                     fontSize: 30,
                     color: Colors.black,
                     fontWeight: FontWeight.w600),
               )),
           SizedBox(
               width: MediaQuery.of(context).size.width * 0.9,
               child: TextField(
                 keyboardType: TextInputType.emailAddress,

                 decoration: InputDecoration(
                     labelText: 'Name',
                     filled: true,
                     fillColor: Colors.grey[200],
                     hintStyle: TextStyle(fontSize: 14),
                     hintText: 'Name',
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                     contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)
                 ),

               )

           ),

           SizedBox(height: 30,),

           SizedBox(
               width: MediaQuery.of(context).size.width * 0.9,
               child: TextField(
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
                 keyboardType: TextInputType.emailAddress,

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
           SizedBox(height: 30,),

           SizedBox(
               width: MediaQuery.of(context).size.width * 0.9,
               child: TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                     labelText: 'Confirm Password',
                     filled: true,
                     fillColor: Colors.grey[200],
                     hintStyle: TextStyle(fontSize: 14),
                     hintText: 'Re-enter Password',
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                     contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0)
                 ),
               )
           ),
           SizedBox(height: 30,),




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
                       'Sign in ',
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

                   ImageIcon(
                     AssetImage('android/app/src/main/assets/images/googleicon.png'),
                     size: 24.0, // set the size of the icon
                   ),
                   SizedBox(width: 20,),

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
       ),)
      ),
    );
  }
}
