import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';



class WeatherData{

  var info;

  var name;
  WeatherData({this.name});

  Future<void> gatdata() async{
    Response response =await get("http://api.openweathermap.org/data/2.5/weather?q=$name&appid=a9449a29d8e2b5c1c67bc007702719e5");
    Map  data=jsonDecode(response.body);
    info= data ;

  }

}