import 'dart:async';

import 'package:brain_toumr_detecation/ui/screens/ScanSuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Uploading extends StatefulWidget {
  const Uploading({Key? key}) : super(key: key);

  @override
  State<Uploading> createState() => _UploadingState();
}

class _UploadingState extends State<Uploading> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const ScanSuccess(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/300px-Hydrocephalus.png',
                  fit: BoxFit.fill),
            ),
            Positioned(
              top: 250.h,
              left: 70.w,
              child: Image.asset('assets/images/Layer 2.png'),
            ),
             Positioned(
               bottom: 50.h,
               left: 100.w,
               right: 100.w,
               child: Container(
                 alignment: Alignment.center,
                   child:  Text("X-ray are being examined",style: TextStyle(color: Colors.white,fontSize: 16.sp),)),
             )
          ],
        )
      ),
    );
  }
}
