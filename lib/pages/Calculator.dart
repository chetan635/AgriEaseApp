import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  var plant;
  var rowspace;
  var area;
  var temp;
  var jj=0.0;
  var dropdownValue="DAP";
  var quantity;
  var ferti;
  var N,P,K;
  var N2=0.0,P2=0.0,K2=0.0;
  var type;
  var heds_pod;
  var grain_head_pod;
  var weight;
  var Final_output;
  var Yield;

  final nameHolder = TextEditingController();
  final nameHolder2 = TextEditingController();
  final nameHolder3 = TextEditingController();
  final nameHolder4 = TextEditingController();



  clearTextInput(){

    nameHolder.clear();
    nameHolder2.clear();
    nameHolder3.clear();
    nameHolder4.clear();

  }

  void setup(var i,var j,var k){
    i=double.parse(i);
    j=double.parse(j);
    k=double.parse(k);

    temp=k/(i*j);
    temp=double.parse(temp.toStringAsFixed(0));
    print(temp);




  }
  void setup2(var i,var j){

    j=double.parse(j);
    if(i=="DAP"){
        N=0.18*j;
        P=0.46*j;
        K=0.0;
    }
    else if(i=="SSP"){
      N=0*j;
      P=0.16*j;
      K=0.0;
    }
    else if(i=="UREA"){
      N=0.46*j;
      P=0.0;
      K=0.0;
    }
    else if(i=="MoP"){
      N=0.0;
      P=0.0;
      K=0.6*j;
    }
    else if(i=="10:26:26"){
      N=0.1*j;
      P=0.26*j;
      K=0.26*j;
    }
    else if(i=='12-32-16'){
      N=0.12*j;
      P=0.32*j;
      K=0.16*j;
    }
    N=double.parse(N.toStringAsFixed(2));
    P=double.parse(P.toStringAsFixed(2));
    K=double.parse(K.toStringAsFixed(2));

    print(N);
    print(P);
    print(K);
  }


  void setup3(var i,var j,var k,var l){
    l=double.parse(l);
    j=double.parse(j);
    k=double.parse(k);

    Final_output=j*k*l;
    Final_output=Final_output/10000;
    Final_output=double.parse(Final_output.toStringAsFixed(3));





  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,

          appBar: AppBar(
            toolbarHeight: 130,

            backgroundColor: Colors.lightGreenAccent[400],
            title: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Calculators",style: GoogleFonts.zillaSlab(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green[900])),
            ),
            bottom: TabBar(
              tabs: [
                Tab(child: Column(
                  children: [
                    Text('Plant',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                    Text('Population',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                  ],
                ),),
                Tab(child: Column(
                  children: [
                    Text('NPK',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                    Text('Calculation',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                  ],
                ),),
                Tab(child: Column(
                  children: [
                    Text('Yield ',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                    Text('Calculation',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                  ],
                ),),
              ],
            ),
          ),
          body:TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.green[900],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                  SizedBox(height: 5,),
                                  Text("Plant Spacing:",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder,

                                        onChanged: (value){
                                          setState(() {
                                            plant=value;


                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(

                                          hintText: "Plant spacing in metres",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),SizedBox(height: 5,),
                                  Text("Row Spacing:",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder2,

                                        onChanged: (value){
                                          setState(() {
                                            rowspace=value;
                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(

                                          hintText: "Row spacing in metres",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),SizedBox(height: 5,),
                                  Text("Field Area:",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder3,


                                        onChanged: (value){
                                          setState(() {
                                            area=value;
                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(


                                          hintText: "Area in metre square",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),
                                  RaisedButton(
                                    onPressed: (){
                                      setup(plant,rowspace,area);
                                      clearTextInput();
                                      setState(() {
                                        jj=temp;
                                      });
                                    },
                                    color:Colors.lightBlueAccent ,
                                    child: Text("Submit",
                                      style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ],

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.green[900],
                        child: Card(
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Output:",style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                Text("$jj",style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.green[900],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                  SizedBox(height: 5,),

                                  Card(
                                    elevation: 0,
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SizedBox(height: 5,),
                                          Text("Fertilizer Type",style: GoogleFonts.zillaSlab(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 30),),
                                          SizedBox(height: 5,),
                                          DropdownButton<String>(
                                            value: dropdownValue,
                                            icon: Icon(Icons.arrow_downward),
                                            iconSize: 24,
                                            elevation: 16,
                                            style: GoogleFonts.zillaSlab(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 20),
                                            underline: Container(

                                              color: Colors.deepPurpleAccent,
                                            ),
                                            onChanged: (String newValue) {
                                              setState(() {
                                                dropdownValue = newValue;

                                              });
                                            },
                                            items: <String>['DAP', 'SSP', 'UREA', 'MoP','10:26:26','12-32-16']
                                                .map<DropdownMenuItem<String>>((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),SizedBox(height: 5,),
                                  Text("Enter Amount in Kg:",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder2,

                                        onChanged: (value){
                                          setState(() {
                                            quantity=value;
                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(

                                          hintText: "Enter Amount ",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),SizedBox(height: 5,),

                                  RaisedButton(
                                    onPressed: (){
                                      setup2(dropdownValue,quantity);
                                      setState(() {
                                          N2=N;
                                          P2=P;
                                          K2=K;
                                      });
                                      clearTextInput();

                                    },
                                    color:Colors.lightBlueAccent ,
                                    child: Text("Submit",
                                      style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ],

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.green[900],
                        child: Card(
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("NPK Contents:",style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                 SizedBox(height: 5,),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Column(
                                       children: [
                                         Text("Nitrogen",style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                         Text("$N2",style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                       ],
                                     ),
                                     Column(
                                       children: [
                                         Text("Phosphorus",style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                         Text("$P2",style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                       ],
                                     ),
                                     Column(
                                       children: [
                                         Text("Potassium",style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                         Text("$K2",style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                       ],
                                     ),
                                   ],
                                 )
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        color: Colors.green[900],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                  SizedBox(height: 5,),
                                  Text(" Type of Crop",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder,

                                        onChanged: (value){
                                          setState(() {
                                            type=value;


                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(

                                          hintText: "Name Of crop",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),SizedBox(height: 5,),
                                  Text("heads/pods per m2",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder2,

                                        onChanged: (value){
                                          setState(() {
                                           heds_pod=value;
                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(

                                          hintText: "heds/pod quantity",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),SizedBox(height: 5,),
                                  Text("grains per head/pod ",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder3,


                                        onChanged: (value){
                                          setState(() {
                                            grain_head_pod=value;
                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(


                                          hintText: "grain par head pod",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),SizedBox(height: 5,),
                                  Text("Weight par 100 Grains",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                    child: Card(
                                      child: TextField(
                                        controller: nameHolder4,


                                        onChanged: (value){
                                          setState(() {
                                            weight=value;
                                          });
                                        },
                                        style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                        decoration: InputDecoration(


                                          hintText: "Weight in 100 gm",
                                          hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                        ),


                                      ),
                                    ),
                                  ),
                                  RaisedButton(
                                    onPressed: (){
                                      setup3(type,heds_pod,grain_head_pod,weight);
                                      clearTextInput();
                                      setState(() {
                                        Yield=Final_output;
                                      });
                                    },
                                    color:Colors.lightBlueAccent ,
                                    child: Text("Submit",
                                      style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                ],

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.green[900],
                        child: Card(
                          elevation: 30,
                          shadowColor: Colors.lightGreenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text("Yield of $type in",style: GoogleFonts.zillaSlab(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    Text("Tonne/Hector:",style: GoogleFonts.zillaSlab(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                  ],
                                ),
                                Text("$Yield ",style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),


        ),
      ),
    );
  }
}
