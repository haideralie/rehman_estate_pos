import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
//import 'package:http/http.dart' as http;
import 'package:rehman_estate_pos/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rehman_estate_pos/login.dart';
import 'login.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  bool showspinner = false;

  //final clr = Color.fromARGB(105, 105, 105, 105);

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Register'),
        ),
        body: ModalProgressHUD(
          inAsyncCall: showspinner,
          child: Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 100, 10, 500),
                  // height: 100,
                  // width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/rehman-logo.png'))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Center(
                  child: Form(
                    //  key: formkey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            //  controller: emailTextController,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: InputDecoration(
                              labelText: "Enter Email",
                              labelStyle: TextStyle(color: Colors.red),
                              hoverColor: Colors.red,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            //controller: passwordTextController,
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: InputDecoration(
                              labelText: "Enter Password",
                              labelStyle: TextStyle(color: Colors.red),
                              hoverColor: Colors.red,
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RaisedButton(
                            onPressed: () async {
                              setState(() {
                                showspinner = true;
                              });
                              print(email);
                              print(password);
                              try {
                                final newUser =
                                    await _auth.createUserWithEmailAndPassword(
                                        email: email, password: password);
                                print(newUser);
                                if (newUser != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                }

                                setState(() {
                                  showspinner = false;
                                });
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
