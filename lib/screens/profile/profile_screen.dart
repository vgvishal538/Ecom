import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileScreenView();
}

class ProfileScreenView extends State<ProfileScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Text('ProfileScreenView'),
      ),
    );
  }
}