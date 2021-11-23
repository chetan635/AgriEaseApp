import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';




class Fertilizer_Final extends StatefulWidget {
  @override
  _Fertilizer_FinalState createState() => _Fertilizer_FinalState();
}

class _Fertilizer_FinalState extends State<Fertilizer_Final> {
  Map data;
  var Fertilizer;
  var name;



  @override
  Widget build(BuildContext context) {

    data=ModalRoute.of(context).settings.arguments;
    Fertilizer  =data['Fertilizer'];
    print(Fertilizer);

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent[400],
        title: Text("Fertilizers",style: GoogleFonts.zillaSlab(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.green[900])),
      ),
      body:
      ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: Fertilizer.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green[900],
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  elevation: 30,
                  shadowColor: Colors.lightGreenAccent,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${Fertilizer[index]['Crop Type']}',style:GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[600])),
                      ),
                      Text('Temparature : ${Fertilizer[index]['Temparature']}°C',style:GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900])),
                      Text('Humidity : ${Fertilizer[index]['Humidity']}%',style:GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900])),
                      Text('Moisture : ${Fertilizer[index]['Moisture']}%',style:GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900])),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 98,
                              color: Colors.green[900],
                              child: Card(shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                                  elevation: 30,
                                  shadowColor: Colors.lightGreenAccent,child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text(' ${Fertilizer[index]['Fertilizer Name']}',style:GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]))),
                                  )),
                            ),
                            Container(

                              color: Colors.green[900],
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 30,
                                shadowColor: Colors.lightGreenAccent,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text('Nitrogen:  ${Fertilizer[index]['Nitrogen']}',style:GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),
                                      Text('Potassium: ${Fertilizer[index]['Potassium']}',style:GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),
                                      Text('Phosphorous: ${Fertilizer[index]['Phosphorous']}',style:GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
      ),

    );
  }
}


