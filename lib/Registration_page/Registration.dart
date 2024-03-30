
import 'package:first_testing/Login_Page/Login_page.dart';
import 'package:first_testing/Login_Page/staticVariable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  @override
  Widget build(BuildContext context) {
    double ourheight = MediaQuery.of(context).size.height;
      double ourwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: ourheight,
            width: ourwidth,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Container(
                  child: SvgPicture.asset("build/src/Sign up-amico.svg",
                  height: 250.h,
                  semanticsLabel: 'signup',
                   fit: BoxFit.contain,),
                ),
                     SizedBox(height: 50.h,),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                     
                        hintText: "Fullname",
                        hintStyle: TextStyle(fontSize: 20.sp),
                         focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                    ),
                  ),
                   SizedBox(height: 40,),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                       
                        hintText: "Email",
                        hintStyle: TextStyle(fontSize: 20.sp),
                         focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                    ),
                  ),
                   SizedBox(height: 40,),
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
                  SizedBox(height: 40,),
                   Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 40.w),
                    
                    child: SizedBox(
                      width: ourwidth,
                      height: 60.h,
                      child: ElevatedButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> myloginpage()));
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 20.h,
                        backgroundColor: Colors.black, foregroundColor: Colors.white),
                       child: Text('Register',style: TextStyle(fontSize: 25.sp),)),
                    ),
                  )
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}