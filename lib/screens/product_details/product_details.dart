import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  final String colordata;
  const ProductDetails({Key? key, required  this.colordata}):super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsView();
}

class _ProductDetailsView extends State<ProductDetails>{



  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Container(
        height: 500,
       width: 500,
       color: Color(int.parse(widget.colordata)),
        child: const Text('Product Details',style: TextStyle(color: Colors.white),),
      ),
    );
  }

}