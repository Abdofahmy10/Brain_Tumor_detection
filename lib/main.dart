import 'package:brain_toumr_detecation/ui/screens/HomePage.dart';
import 'package:brain_toumr_detecation/ui/screens/ScanSuccess.dart';
import 'package:brain_toumr_detecation/ui/screens/SplashScreen.dart';
import 'package:brain_toumr_detecation/ui/screens/uploading.dart';
import 'package:brain_toumr_detecation/ui/screens/Scanfail.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
