import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rehman_estate_pos/home.dart';
import 'package:rehman_estate_pos/login.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _versionName = 'Rehman Estate And Builders';
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      child: Stack(fit: StackFit.expand, children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(
                  color: Colors.transparent,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'images/rehman-logo.png',
                          height: 100,
                          width: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            'Rehman Estate ',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ])),
            ),
            Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                  CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                    backgroundColor: Colors.white,
                  ),
                  Container(
                    height: 10,
                  ),
                  //       Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //           children: <Widget>[
                  //             Spacer(),
                  //             Text(_versionName),
                  //             Spacer(
                  //               flex: 4,
                  //             ),
                  //             Text('A Digital House'),
                  //             Spacer(),
                ]))
          ],
        ),
      ]),
    ));
  }
}
