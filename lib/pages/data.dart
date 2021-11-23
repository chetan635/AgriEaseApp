import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class Data{

  List info;
  String url;
  Data(this.url);

  Future<void> gatdata() async{
    Response response =await get("$url");
    Map  data=jsonDecode(response.body);
    print(data);
    info=data["cases_time_series"];
    print(info);
  }

}