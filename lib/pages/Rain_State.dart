import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';


class Rain_State extends StatefulWidget {
  @override
  _Rain_StateState createState() => _Rain_StateState();
}

class _Rain_StateState extends State<Rain_State> {



  Map data;
  var RainFall;
  void function(String name){
    Navigator.pushNamed(context,'/Rain_District', arguments: {
      'DistrictRain':RainFall[name],
    });
  }

  @override

  Widget build(BuildContext context) {

    data=ModalRoute.of(context).settings.arguments;
    RainFall  =data['RainFall'];


    return Scaffold(


      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[

          SliverAppBar(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(35),
              ),
            ),
            expandedHeight: 90.0,
            backgroundColor: Colors.lightGreenAccent[400],


            flexibleSpace:FlexibleSpaceBar(title: Text('RainFall Info',
              style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                              function("LAKSHADWEEP");
                          },
                          child: Card(
                            color: Colors.pinkAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("LAKSHADWEEP",style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("ARUNACHAL PRADESH");
                          },
                          child: Card(
                            color: Colors.blueAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("ARUNACHAL PRADESH",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      )
                      )],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("MEGHALAYA");
                          },
                          child: Card(
                            color: Colors.yellowAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("MEGHALAYA",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                            function("MANIPUR");
                          },
                          child: Card(
                            color: Colors.redAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("MANIPUR",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("MIZORAM");
                        },
                        child: Card(
                          color: Colors.deepOrangeAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("MIZORAM",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("NAGALAND");
                        },
                        child: Card(
                          color: Colors.tealAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("NAGALAND",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                  ],
                ) ,Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                              function("TRIPURA");
                          },
                          child: Card(
                            color: Colors.pinkAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("TRIPURA",style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                          width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("WEST BENGAL");
                          },
                          child: Card(
                            color: Colors.blueAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("WEST BENGAL",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      )
                      )],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("ASSAM");
                          },
                          child: Card(
                            color: Colors.yellowAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("ASSAM",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                            function("SIKKIM");
                          },
                          child: Card(
                            color: Colors.redAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("SIKKIM",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("ORISSA");
                        },
                        child: Card(
                          color: Colors.deepOrangeAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("ORISSA",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("JHARKHAND");
                        },
                        child: Card(
                          color: Colors.tealAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("JHARKHAND",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                  ],
                ) ,Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                              function("BIHAR");
                          },
                          child: Card(
                            color: Colors.pinkAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("BIHAR",style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                          width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("UTTAR PRADESH");
                          },
                          child: Card(
                            color: Colors.blueAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("UTTAR PRADESH",style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      )
                      )],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("UTTARANCHAL");
                          },
                          child: Card(
                            color: Colors.yellowAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("UTTARANCHAL",style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                            function("HARYANA");
                          },
                          child: Card(
                            color: Colors.redAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("HARYANA",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("CHANDIGARH");
                        },
                        child: Card(
                          color: Colors.deepOrangeAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("CHANDIGARH",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("DELHI");
                        },
                        child: Card(
                          color: Colors.tealAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("DELHI",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                  ],
                ), Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                              function("PUNJAB");
                          },
                          child: Card(
                            color: Colors.pinkAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("PUNJAB",style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                          width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("HIMACHAL");
                          },
                          child: Card(
                            color: Colors.blueAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("HIMACHAL",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      )
                      )],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("JAMMU AND KASHMIR");
                          },
                          child: Card(
                            color: Colors.yellowAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("JAMMU AND KASHMIR",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                            function("RAJASTHAN");
                          },
                          child: Card(
                            color: Colors.redAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("RAJASTHAN",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("MADHYA PRADESH");
                        },
                        child: Card(
                          color: Colors.deepOrangeAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text("MADHYA PRADESH",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("GUJARAT");
                        },
                        child: Card(
                          color: Colors.tealAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("GUJARAT",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                  ],
                ), Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                              function("DADAR NAGAR HAVELI");
                          },
                          child: Card(
                            color: Colors.pinkAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text("DADAR NAGAR HAVELI",style: GoogleFonts.zillaSlab(fontSize: 28,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                          width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("DAMAN AND DUI");
                          },
                          child: Card(
                            color: Colors.blueAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("DAMAN AND DUI",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      )
                      )],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("MAHARASHTRA");
                          },
                          child: Card(
                            color: Colors.yellowAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("MAHARASHTRA",style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                            function("GOA");
                          },
                          child: Card(
                            color: Colors.redAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("GOA",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("CHATISGARH");
                        },
                        child: Card(
                          color: Colors.deepOrangeAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("CHATISGARH",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      width: 195,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("ANDHRA PRADESH");
                        },
                        child: Card(
                          color: Colors.tealAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text("ANDHRA PRADESH",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),
                  ],
                ) ,Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                              function("TAMIL NADU");
                          },
                          child: Card(
                            color: Colors.pinkAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("TAMIL NADU",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                          width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("PONDICHERRY");
                          },
                          child: Card(
                            color: Colors.blueAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("PONDICHERRY",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ),
                      )
                      )],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 195,
                        height: 90,
                        child: InkWell(
                          onTap: (){
                            function("KARNATAKA");
                          },
                          child: Card(
                            color: Colors.yellowAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("KARNATAKA",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      ),
                      Container(
                        width: 195,
                        height: 150,
                        child: InkWell(
                          onTap: (){
                            function("KERALA");
                          },
                          child: Card(
                            color: Colors.redAccent,
                            elevation: 30,
                            shadowColor: Colors.lightGreenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("KERALA",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),),
                            )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 390,
                      height: 110,
                      child: InkWell(
                        onTap: (){
                          function("ANDAMAN And NICOBAR ISLANDS");
                        },
                        child: Card(
                          color: Colors.deepOrangeAccent,
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("ANDAMAN And NICOBAR ISLANDS",style: GoogleFonts.zillaSlab(fontSize: 23,fontWeight: FontWeight.bold),),
                          )),
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),

        ],

      ),

    );
  }
}
