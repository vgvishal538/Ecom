import 'dart:async';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget{
  const SplashScreen({Key ? key}):super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenView();

  }

  class _SplashScreenView extends State<SplashScreen> {

  @override
    void initState() {
    super.initState();
    openMainScreen();
  }
  void openMainScreen(){
    Future.delayed(const Duration(seconds: 2)).then((value) => setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("")),
      body: const Center(
          child:Text("Splash",textScaleFactor: 2,),
      ),
    );
  }

  }

