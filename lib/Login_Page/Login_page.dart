import 'package:first_testing/Login_Page/staticVariable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class myloginpage extends StatefulWidget {
  const myloginpage({super.key});

  @override
  State<myloginpage> createState() => _myloginpageState();
}

class _myloginpageState extends State<myloginpage> {
  @override
  Widget build(BuildContext context) {
    double ourheight = MediaQuery.of(context).size.height;
      double ourwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: ourheight,
        width: ourwidth,
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                
                  children: [
                  Container(
                    
                    child: SvgPicture.asset("build/src/Fingerprint-bro.svg",
                    height: 270.h,
                    
                    semanticsLabel: 'Fingerprint',
                    fit: BoxFit.contain,),
                  ),
                  SizedBox(height: 40.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 20.sp),
                         focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                    ),
                  ),
                    SizedBox(height: 40.w,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        
                        prefixIcon: Icon(Icons.person_2_outlined),
                        hintText: "Username",
                         hintStyle: TextStyle(fontSize: 20.sp),
                         focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                    ),
                  ),
            
                   SizedBox(height: 40.h,),
            
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 40.h),
                    child: SizedBox(
                      width: ourwidth,
                      height: 60.h,
                      child: ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 20.h,
                        backgroundColor: Colors.black, foregroundColor: Colors.white),
                       child: Text('Login',style: TextStyle(fontSize: 25.sp),)),
                    ),
                  ),
                   SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?\t '),
                      Text('Register', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),)
                    ],
                  )
                  
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}