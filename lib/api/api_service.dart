import 'dart:developer';

import 'package:ecom/api/api_constants.dart';
import 'package:ecom/models/home_screen_data_model.dart';
import 'package:http/http.dart' as http;


class ApiService {
   Future<HomeScreenModel?> getResources() async{
    try{
      var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.resources);
      var response = await http.get(url);
     if(response.statusCode==200){
     HomeScreenModel _home_model = homeScreenModelFromJson(response.body);
     return _home_model;
     }
    }catch(e){
      log(e.toString());
    }
  }
}