import 'package:brain_toumr_detecation/ui/screens/uploading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101010),
      body: SafeArea(
        child: Column(
          children: [
             SizedBox(
              height: 100.h,
            ),
            Container(
                alignment: Alignment.center,
                child: Image.asset('assets/images/face-detection.png')),
             SizedBox(
              height: 150.h,
            ),
             Text(
              'Upload your X-ray To start the Scan',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27.sp,
                  fontWeight: FontWeight.bold),
            ),
             SizedBox(
              height: 40.h,
            ),
            Container(
              padding:  EdgeInsets.only(left: 40.w),
              child: Row(
                children:  [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 10.r,
                  ),
                  SizedBox(width: 10.w,),
                  Text(
                    'Allow access to your gallary',
                    style: TextStyle(color: Colors.white, fontSize: 13.sp),
                  ),
                ],
              ),
            ),
             SizedBox(height: 20.h,),
            Container(
              padding:  EdgeInsets.only(left: 40.w),
              child: Row(
                children:  [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 10.r,
                  ),
                  SizedBox(width: 10.w,),
                  Text('upload your photo',style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                ],
              ),

            ),
             SizedBox(height: 20.h,),
            Container(
              padding:  EdgeInsets.only(left: 40.w),
              child: Row(
                children:  [
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: 10.r,
                  ),
                  SizedBox(width: 10.w,),
                  Text('Make sure to place clear photo',style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                ],
              ),
            ),
             SizedBox(height: 150.h,),
            SizedBox(
              width: 200.w,
              height: 50.h,
              child: ElevatedButton(
                style:  ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0.r)))),
                  backgroundColor: const MaterialStatePropertyAll(Color(0xff307FEA))
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Uploading(),));
                }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Icon(Icons.upload),
                   Text('Upload',style: TextStyle(fontSize: 15.sp),),
                ],
              ),),
            )
          ],
        ),
      ),
    );
  }
}
