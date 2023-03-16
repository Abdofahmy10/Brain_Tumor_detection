import 'dart:async';
import 'package:brain_toumr_detecation/ui/screens/HomePage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                HomePage(),
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
          children:  [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text("BRAIN TUMOR",style: TextStyle(
                      color: Colors.white,fontSize: 40
                  ),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Row(
                children: const [
                  Text("DETECATION",style: TextStyle(
                      color: Color(0xff307FEA),fontSize: 40
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
