import 'dart:async';

import 'package:brain_toumr_detecation/ui/screens/Scanfail.dart';
import 'package:flutter/material.dart';

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
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Image.asset('assets/images/happy-man-svgrepo-com.png'),
            ),
            const SizedBox(height: 60,),
            const Text(
              "You Do Not have Brain Cancer",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
