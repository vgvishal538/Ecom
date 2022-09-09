import 'dart:developer';

import 'package:ecom/api/api_service.dart';
import 'package:ecom/models/home_screen_data_model.dart';
import 'package:ecom/screens/product_details/product_details.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  const HomeScreen({Key ? key}):super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenView();
}

class _HomeScreenView extends State<HomeScreen>{
     HomeScreenModel? _home_model;

   @override
   void initState(){
     super.initState();
     _getResources();
   }

   void _getResources() async{
     _home_model = (await ApiService().getResources())!;
      Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
   }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _home_model==null?
      const Center(
        child: CircularProgressIndicator(),
      ):
      ListView.builder(
        itemCount: _home_model!.data.length,
          itemBuilder: (context,index){
            String color = _home_model!.data[index].color.replaceAll('#', '0xff');
            return InkWell(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetails(colordata:color)));
               },
                child: Card(
            color: Color(int.parse(color)) ,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      _home_model!.data[index].name,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ));
          }
      )
    );
  }
}