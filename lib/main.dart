// import 'package:flutter/cupertino.dart';
// import 'package:app/profile.dart';
// import 'dart:ui';

import 'package:app/login.dart';
import 'package:app/screens/contactus.dart';
import 'package:app/screens/editprofile.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/myorder.dart';
import 'package:app/screens/settings.dart';
import 'package:app/screens/singnin.dart';
import 'package:app/screens/singnup.dart';
import 'package:app/screens/splash_screen.dart';
import 'package:app/screens/vercation.dart';
import 'package:app/test.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return (
      
       MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "new",
      // home:MySettings(),
      initialRoute: "splash",
      routes: {
        "splash":(context)=>const MySplashScreen(),
        "home":(context)=>MyHomeScreen(),
        
        "signin":(context)=>MySigninScreen(),
        "singup":(context)=>MySignupScreen(),
        "Setting":(context)=>MySettings(),
        "order":(context)=>MyOrder(),
        "contactus":(context)=>MyContactUs(),
        "editprofile":(context)=>MyEditProfile(),
        "verfiy":(context)=>MyVarcation()
        

      },
       
      )
    );
  }
}
