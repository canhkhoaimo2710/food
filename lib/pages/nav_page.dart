import 'package:flutter/material.dart';
import 'package:food/home_page.dart';
import 'page.dart';

 MaterialApp navPage () {
   return MaterialApp(
     initialRoute: "/",
     routes: {
       '/': (context) => const HomePage(),
       '/signIn': (context) => const SignIn(),
       '/signUP': (context) => const SignUpPage(),
       '/forgotPass': (context) => const ForgotPasswordPage(),
       '/forgotPassSuccess': (context) => const ForgotPasswordSuccess(),
       '/mainPage': (context) => const MainPage(),
     },
   );
 }

