import 'package:flutter/material.dart';
import 'package:real_app/pages/home_page.dart';
import 'package:real_app/pages/login_page.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  static final String id= "SignUpPage";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new  TextEditingController();

  doSignUp(){
    String name = emailController.text;
    String email = emailController.text;
    String password = passwordController.text;

    if(name.isNotEmpty && email.isNotEmpty && password.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: Container(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Text("Instagram", style: TextStyle(fontSize: 45, fontFamily: 'Billabong', ),),
              )
            ),
            Container(
              child: TextField(
                controller: nameController,
                style: TextStyle(fontSize: 15, color: Colors.black54),
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: emailController,
                style: TextStyle(fontSize: 15, color: Colors.black54),
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(fontSize: 15, color: Colors.black54),
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 40,
                width: double.infinity,
                // padding: EdgeInsets.only(right: 25, left: 25),
                child:FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  onPressed: (){
                   doSignUp();
                  },
                  child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 20),),
                  color: Colors.blue,
              )
              ),
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Aiready have an account? ",style: TextStyle(fontSize: 16, color: Colors.black54),),
                  SizedBox(width: 10,),

                  InkWell(
                    child: Text("Log In", style: TextStyle(fontSize: 16, color: Colors.black87, fontWeight:FontWeight.bold)),
                    onTap: () {
                      Navigator.pushReplacementNamed(context, LoginPage.id);
                    },
                    )
                ],
              ),
          ],
        ),
      ),
    );
  }
}