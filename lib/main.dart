import 'package:brain_toumr_detecation/ui/screens/HomePage.dart';
import 'package:brain_toumr_detecation/ui/screens/ScanSuccess.dart';
import 'package:brain_toumr_detecation/ui/screens/SplashScreen.dart';
import 'package:brain_toumr_detecation/ui/screens/uploading.dart';
import 'package:brain_toumr_detecation/ui/screens/Scanfail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
       child: SplashScreen(),
    );
  }
}