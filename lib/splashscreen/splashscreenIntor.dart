import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splashscreenintor extends StatefulWidget {
  const splashscreenintor({super.key});

  @override
  State<splashscreenintor> createState() => _splashscreenintorState();
}

class _splashscreenintorState extends State<splashscreenintor> with TickerProviderStateMixin{

    double _fontSize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;
  
    @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });

          _controller.forward();

    Timer(Duration(seconds: 5), () {
      setState(() {
        _fontSize = 1.06;
      });
    });

        Timer(Duration(seconds: 5), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(Duration(seconds: 15), () {
      setState(() {
        Navigator.pushReplacement(context, PageTransition(SecondPage()));
      });
    });
  }




    @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height;
     double mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Container(
        height: myheight,
        width: mywidth,
        child: Stack(
          children: [
            Column(
              children: [
                              AnimatedContainer(
                  duration: Duration(seconds: 5),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: myheight / _fontSize,
                ),
                //==========================================================//
                              AnimatedOpacity(
                  duration: Duration(seconds: 5),
                  opacity: _textOpacity,
                  child: Text(
                    'God is Great',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: animation1.value,
                    ),
                     ),
                      ),
        
              ],
            ),
        //=========================================================================/
            AnimatedOpacity(
                duration: Duration(seconds: 5),
                curve: Curves.fastLinearToSlowEaseIn,
                opacity: _containerOpacity,
                child: Center(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 5),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: mywidth / _containerSize,
                    width: mywidth / _containerSize,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('build/src/fupre-logotoday-removebg-preview.png')),
                      color: Colors.white,
        
                    ),
                    
                      ),
                ),
                  ),
          ],
        ),
      ),
    );
  }
  }
//============================================================================//
  class PageTransition extends PageRouteBuilder {
  final Widget page;

  PageTransition(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
              curve: Curves.fastLinearToSlowEaseIn,
              parent: animation,
            );
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                child: page,
                axisAlignment: 0,
              ),
            );
          },
        );
}

 //==========================================================================//
        class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          'YOUR APP\'S NAME',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ), systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}

