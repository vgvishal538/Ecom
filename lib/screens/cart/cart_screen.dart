import 'package:flutter/material.dart';


class CartScreen extends StatefulWidget{
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => CartScreenView();
}

class CartScreenView extends State<CartScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Text('CartScreen'),
      ),
    );
  }
}