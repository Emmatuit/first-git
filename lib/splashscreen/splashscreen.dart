import 'package:first_testing/Login_Page/staticVariable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class splashscreen6 extends StatelessWidget {
  const splashscreen6({super.key});

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
     double mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height:myheight ,
        width: mywidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 
                 Container(
                      child: SvgPicture.asset("build/src/Thesis-amico.svg",
                      height: 350.h,
                      semanticsLabel: 'signup',
                       fit: BoxFit.contain,),
                    ),
            
                     
              ],
            ),
             SizedBox(height: 80.h,),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 40.w),
                   child: SizedBox(
                        width: mywidth,
                        height: 60.h,
                        child: ElevatedButton(onPressed: (){
                        
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 20.h,
                          backgroundColor: Colors.black, foregroundColor: Colors.white),
                         child: animated_text(text1: 'Get Started', text2: 'Get Started', text3: 'Get Started')),
                      ),
                 ),
          ],
        ),
      ),
    );;
  }
}