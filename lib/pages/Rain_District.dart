import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Rain_District extends StatefulWidget {
  @override
  _Rain_DistrictState createState() => _Rain_DistrictState();
}

class _Rain_DistrictState extends State<Rain_District> {
  Map data;
  var DistrictRain;

  void Districtdata(var ind){
    Navigator.pushNamed(context,'/Rain_Final', arguments: {
      'FinalInfo':DistrictRain[ind],
    });
  }

  @override
  Widget build(BuildContext context) {

    data=ModalRoute.of(context).settings.arguments;
    DistrictRain  =data['DistrictRain'];
    print(DistrictRain);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent[400],
        title: Text("DistrictRainFall Info",style: GoogleFonts.zillaSlab(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green[900])),
      ),
      body:
      ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: DistrictRain.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green[900],
                height: 100,
                child: InkWell(
                  onTap: (){
                      Districtdata(index);
                  },
                  child: Card(
                    elevation: 30,
                    shadowColor: Colors.lightGreenAccent,
                    child: Center(child: Text('${DistrictRain[index]['DISTRICT']}',style:GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]))),
                  ),
                ),
              ),
            );
          }
      ),

    );
  }
}
