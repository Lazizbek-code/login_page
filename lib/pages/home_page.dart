import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  static const String id= "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Instagram', style: TextStyle(color: Colors.white, fontFamily: 'Billabong', fontSize: 30),),
      ),

      body:const Center(
        child: Text("Welcome to Instagram", style: TextStyle(fontSize: 25),),
      )
    );
  }
}