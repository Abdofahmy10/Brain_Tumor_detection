import 'dart:async';

import 'package:brain_toumr_detecation/ui/screens/ScanSuccess.dart';
import 'package:flutter/material.dart';

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
            SizedBox(width: double.infinity,
              child: Image.asset('assets/images/300px-Hydrocephalus.png',
                  fit: BoxFit.fill),
            ),
            Positioned(
              top: 250,
              left: 70,
              child: Image.asset('assets/images/Layer 2.png'),
            ),
             Positioned(
               bottom: 50,
               left: 100,
               right: 100,
               child: Container(
                 alignment: Alignment.center,
                   child: const Text("X-ray are being examined",style: TextStyle(color: Colors.white),)),
             )
          ],
        )
      ),
    );
  }
}
