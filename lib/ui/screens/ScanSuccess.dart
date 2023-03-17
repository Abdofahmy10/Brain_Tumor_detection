import 'dart:async';

import 'package:brain_toumr_detecation/ui/screens/Scanfail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScanSuccess extends StatefulWidget {
  const ScanSuccess({Key? key}) : super(key: key);

  @override
  State<ScanSuccess> createState() => _ScanSuccessState();
}

class _ScanSuccessState extends State<ScanSuccess> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const ScanFail(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin:  EdgeInsets.only(left: 20.w, right: 20.w),
              child: Image.asset('assets/images/happy-man-svgrepo-com.png'),
            ),
             SizedBox(height: 20.h,),
             Text(
              "You Do Not have Brain Cancer",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
