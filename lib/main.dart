//import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:rehman_estate_pos/home.dart';
import 'package:rehman_estate_pos/login.dart';
import 'package:rehman_estate_pos/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      home: SplashScreen(),
    ),
  );
}
