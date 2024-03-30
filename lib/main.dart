import 'package:first_testing/splashscreen/Introductonstate.dart';
import 'package:first_testing/splashscreen/splashscreen.dart';
import 'package:first_testing/splashscreen/splashscreenIntor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(maindart());


class maindart extends StatefulWidget {
  const maindart({super.key});

  @override
  State<maindart> createState() => _maindartState();
}

class _maindartState extends State<maindart> {
  @override
  Widget build(BuildContext context) {
     double ourheight = MediaQuery.of(context).size.height;
      double ourwidth = MediaQuery.of(context).size.width;
  
    return ScreenUtilInit(
      designSize: Size(ourwidth, ourheight),
      minTextAdapt: true,
      ensureScreenSize: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashscreenintor(),
      ),
    );
  }
}