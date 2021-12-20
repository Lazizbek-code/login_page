import 'package:flutter/material.dart';
import 'package:real_app/pages/home_page.dart';
import 'package:real_app/pages/login_page.dart';
import 'package:real_app/pages/sign_up_page.dart';
import 'package:real_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        HomePage.id: (context)=> const HomePage(),
        SplashPage.id: (context)=> const SplashPage(),
        LoginPage.id: (context)=>const LoginPage(),
        SignUpPage.id: (context)=>const SignUpPage(),
      },
    );
  }
}
