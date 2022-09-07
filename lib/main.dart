import 'dart:async';

import 'package:ecom/screens/cart/cart_screen.dart';
import 'package:ecom/screens/home/home_screen.dart';
import 'package:ecom/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecom/screens/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => HomeScreenWidget();
}
class HomeScreenWidget extends State<MyHomePage>{

  int _selectedIndex = 0;
   static const TextStyle optionStyle= TextStyle(fontSize: 20);
   static const List<Widget> _widgetOptions = <Widget>[
     HomeScreen(),
     CartScreen(),
     ProfileScreen(),
   ];

   void _onItemTapped(int index){
     setState(() {
       _selectedIndex=index;
     });
   }

   @override
  Widget build(BuildContext context){
     return Scaffold(
       appBar: AppBar(
         title: const Text('ECOM'),
       ),
       body: Center(
         child: _widgetOptions.elementAt(_selectedIndex),
       ),
       bottomNavigationBar: BottomNavigationBar(
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
               icon: Icon(Icons.home),
               label: 'Home'
           ),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
           BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_rounded),label: 'Profile'),
         ],
         currentIndex: _selectedIndex,
         selectedItemColor: Colors.amber[800],
         onTap:_onItemTapped,
       ),

     );
   }
}




