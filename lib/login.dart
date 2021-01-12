import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

//import 'package:http/http.dart' as http;
import 'package:rehman_estate_pos/home.dart';
import 'package:rehman_estate_pos/home1.dart';
import 'register.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

// void getHttp() async {
//   try {
//     Response response = await Dio().get("http://www.google.com");
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showspinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Login'),
        ),
        body: ModalProgressHUD(
          color: Colors.red,
          inAsyncCall: showspinner,
          child: Stack(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 100, 10, 500),
                  // height: 100,
                  //width: 50,
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

                            decoration: InputDecoration(
                              labelText: "Enter Email",
                              labelStyle: TextStyle(color: Colors.red),
                              fillColor: Colors.red,
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

                            // decoration: InputDecoration(
                            //     border: OutlineInputBorder(), labelText: "Email"),
                            onChanged: (value) {
                              email = value;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            //controller: passwordTextController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Enter Password",
                              labelStyle: TextStyle(color: Colors.red),
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
                            onChanged: (value) {
                              password = value;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RaisedButton(
                            onPressed: () async {
                              setState(() {
                                showspinner = true;
                              });

                              try {
                                final user =
                                    await _auth.signInWithEmailAndPassword(
                                        email: email, password: password);

                                if (user != null) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen1()));
                                }

                                setState(() {
                                  showspinner = false;
                                });
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Text('Login',
                                style: TextStyle(color: Colors.white)),
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
