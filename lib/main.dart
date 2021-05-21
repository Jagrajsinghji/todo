import 'package:flutter/material.dart';
import 'package:todo/UI/homepage.dart';
import 'package:todo/UI/todo_list.dart';

import 'UI/signin.dart';
import 'UI/signup.dart';
import 'UI/splashscreen.dart';
import 'constants/constants.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    routes: <String, WidgetBuilder>{
      SPLASH_SCREEN: (BuildContext context) =>  SplashScreen(),
      SIGN_IN: (BuildContext context) =>  SignInPage(),
      SIGN_UP: (BuildContext context) =>  SignUpScreen(),
    },
    initialRoute: SPLASH_SCREEN,
    debugShowCheckedModeBanner: false,
  ));
}
