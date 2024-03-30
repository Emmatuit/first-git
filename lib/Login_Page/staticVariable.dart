import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class mystaic{
  static Color mycolor = Color.fromARGB(255, 164, 107, 21);
}

Widget animated_text({required String text1, required String text2, required String  text3}){
  return Center(
    child: DefaultTextStyle(style: TextStyle(
      color: Colors.white,
      fontSize: (25.sp),
      fontWeight: FontWeight.bold,
    ),
     child: AnimatedTextKit(

      repeatForever: true,
      isRepeatingAnimation: true,
      animatedTexts:[
        FadeAnimatedText(
         
          text1),
        FadeAnimatedText(text2), 
        FadeAnimatedText(text3),
      ] ),
      
    ),
  );
}

Widget text_Animation({required String text5}){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 15.w),
    child: Center(
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(text5,
          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.sp, ),textAlign: TextAlign.center,
          speed: Duration(milliseconds: 150)), 
        ],
        isRepeatingAnimation: true,
        repeatForever: true,
        displayFullTextOnTap: false,
        stopPauseOnTap: false,
        ),
    ),
  );
}

