import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projecttuleep/pages/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton =false;


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Image.asset("assets/images/login1.png"),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Login Page",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 30,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your User id",
                    labelText: "User Id",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Your User Pass",
                    labelText: "User Pass",
                  ),
                )
              ],
            ),
          ),

          Material(
            borderRadius: BorderRadius.circular(changeButton? 45 : 8),
            color: Colors.blue,

            child: InkWell(
              borderRadius: BorderRadius.circular(changeButton? 45 : 8),
            splashColor: Colors.red,
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                await Navigator.pushNamed(context, MyRoute.homeRoute);
                setState(() {
                  changeButton = false;
                });
              },
              child: AnimatedContainer(
                alignment: Alignment.center,
                width: changeButton? 50 : 120,
                height: 50,
                duration: Duration(seconds: 1),
                child: changeButton? Icon(Icons.done,color: Colors.white,) : Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),

            ),
          )

          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, MyRoute.homeRoute);
          //   },
          //   child: Text("Login"),
          //   style: TextButton.styleFrom(
          //       minimumSize: Size(100, 50), backgroundColor: Colors.blue),
          // )
        ],
      ),
    );
  }
}
