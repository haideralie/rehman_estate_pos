import 'package:rehman_estate_pos/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rehman_estate_pos/register.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/rehman-logo.png',
              height: 200,
              width: 200,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 50)),
            FlatButton(
              child: Text(
                'Register User',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Register()));
              },
              color: Colors.black,
            ),
            FlatButton(
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
