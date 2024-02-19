import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/question.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:6), () { Navigator.push(context, MaterialPageRoute(builder:(context)=>Question()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(backgroundColor:Colors.redAccent,
        body: Center(
        child:  CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage ('image/download.png'),
          ),
        ),
      ),
    );
  }
}

