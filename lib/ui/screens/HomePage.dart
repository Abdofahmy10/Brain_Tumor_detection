import 'package:brain_toumr_detecation/ui/screens/uploading.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/face-detection.png')),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Upload your X-ray To start the Scan',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 10,
                  ),
                  SizedBox(width: 10,),
                  Text(
                    'Allow access to your gallary',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 10,
                  ),
                  SizedBox(width: 10,),
                  Text('upload your photo',style: TextStyle(color: Colors.white,fontSize: 15),),
                ],
              ),

            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: const [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 10,
                  ),
                  SizedBox(width: 10,),
                  Text('Make sure to place clear photo',style: TextStyle(color: Colors.white,fontSize: 15),),
                ],
              ),
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
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Uploading(),));
                }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.upload),
                   Text('Upload'),
                ],
              ),),
            )
          ],
        ),
      ),
    );
  }
}
