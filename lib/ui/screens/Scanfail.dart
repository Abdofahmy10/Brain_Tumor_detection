import 'package:brain_toumr_detecation/ui/screens/HomePage.dart';
import 'package:flutter/material.dart';

class ScanFail extends StatelessWidget {
  const ScanFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                child: Image.asset(
                    'assets/images/man-with-headache-svgrepo-com.png')),
            const SizedBox(height: 40,),
            const Text(
              'Unfortunately You Have a Brain Cancer',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 200,),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(35.0)))),
                    backgroundColor: MaterialStatePropertyAll(Color(0xff307FEA))
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage(),));
                }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.upload),
                  Text('Try Another?'),
                ],
              ),),
            )
          ],
        ),
      ),
    );
  }
}
