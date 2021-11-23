import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';




  class Mandi extends StatefulWidget {
    @override
    _MandiState createState() => _MandiState();
  }

  class _MandiState extends State<Mandi> {
    Map data;
    var finalMandi;
    var name;

    @override
    Widget build(BuildContext context) {
      data=ModalRoute.of(context).settings.arguments;
      finalMandi  =data['info'];
      name  =data['name'];
      print(name);
      print(finalMandi);
      return Scaffold(

        appBar: AppBar(
          toolbarHeight: 80,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(35),
            ),
          ),
          backgroundColor: Colors.lightGreenAccent[400],
          title: Text(name,style: GoogleFonts.zillaSlab(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green[900])),
        ),
        body:
        ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: finalMandi.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.green[900],
                  child: Card(
                    elevation: 30,
                    shadowColor: Colors.lightGreenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${finalMandi[index]['district']}',style:GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900])),
                        ),
                        Text('${finalMandi[index]['market']}',style:GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900])),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(fit: FlexFit.loose,child: Container(
                                color: Colors.green[900],
                                child: Card(color: Colors.lightGreenAccent[100],shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),elevation:15,shadowColor: Colors.lightGreenAccent,child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text('${finalMandi[index]['commodity']}',style:GoogleFonts.zillaSlab(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green[900])),
                                )),
                              )),
                              Column(
                                children: [
                                  Text('Max Price',style:GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green[900])),
                                  Text('₹ ${finalMandi[index]['max_price']}',style:GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),
                                  Text('Min Price',style:GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green[900])),
                                  Text('₹ ${finalMandi[index]['min_price']}',style:GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),

                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('Modal Price',style:GoogleFonts.zillaSlab(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.green[900])),
                        Text('₹ ${finalMandi[index]['modal_price']}',style:GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900])),
                        SizedBox(height: 10,)
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
