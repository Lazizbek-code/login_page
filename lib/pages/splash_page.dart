import 'dart:async';

import 'package:flutter/material.dart';
import 'package:real_app/pages/home_page.dart';
import 'package:real_app/pages/login_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);
  static const String id= "splash_page";
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  var isLoggedIn = false;

  initTimer(){
    Timer(const Duration(seconds: 2), (){
      if (isLoggedIn) {
        Navigator.pushReplacementNamed(context, HomePage.id);
      } else {
        Navigator.pushReplacementNamed(context, LoginPage.id);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50),
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image.asset('assets/images/logo.png', height: 80, width: 80,),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text("From Facebook", style: TextStyle(color: Colors.black87, fontSize:17,),)
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}