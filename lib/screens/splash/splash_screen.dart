import 'dart:async';
import 'package:flutter/material.dart';




class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key, required String title}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Home")),
      body: const Center(
        child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }

}
