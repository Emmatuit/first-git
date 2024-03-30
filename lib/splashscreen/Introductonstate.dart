import 'package:first_testing/splashscreen/splashscreen.dart';
import 'package:first_testing/splashscreen/splashscreen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class introductionstat extends StatefulWidget {
  const introductionstat({super.key});

  @override
  State<introductionstat> createState() => _introductionstatState();
}

class _introductionstatState extends State<introductionstat> {

  final PageController _pageController = PageController(initialPage: 1, keepPage: true);
  int _currentpage = 1;

  final List<Widget> pages = [
    Splashscreen1(),
    splashscreen6()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: pages.length,
              onPageChanged: (value) {
                setState(() {
                  _currentpage = value;
                });
              },

              itemBuilder: (context, index) {
                return pages[index];
              },)),
              Padding(
                padding:  EdgeInsets.only(bottom: 45.h),
                child: _buildIndicators(),
              ),
        ],
      ),
    );
  }
Widget  _buildIndicator(int index){
  return Padding(
    padding:EdgeInsets.all(8.0),
    child: Container(
      width: 20.w,
      height: 10.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        shape: BoxShape.rectangle, color: _currentpage == index ? Colors.black: Colors.grey),
    ),);
}
 Widget _buildIndicators(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(pages.length, (index) => _buildIndicator(index)),
  );
 }


}

