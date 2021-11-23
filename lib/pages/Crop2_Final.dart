import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Crop2_Final extends StatefulWidget {
  @override
  _Crop2_FinalState createState() => _Crop2_FinalState();
}

class _Crop2_FinalState extends State<Crop2_Final> {
  var data;
  var Crop;
  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    Crop =data['crop1final'];
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent[400],
        title: Text("CropType And Yield",style: GoogleFonts.zillaSlab(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green[900])),
      ),
      body:
      ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Crop.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green[900],
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.lightGreenAccent,
                  child: Center(child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${Crop[index]['Crop']}',style:GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(' Yield : ${Crop[index]['Yield']}',style:GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('  ${Crop[index]['Crop_Year']}',style:GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900])),
                      ),
                    ],
                  )),
                ),
              ),
            );
          }
      ),

    );
  }
}
