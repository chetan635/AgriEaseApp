import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Crop3 extends StatefulWidget {
  @override
  _Crop3State createState() => _Crop3State();
}

class _Crop3State extends State<Crop3> {
  var dropdownValue='Andaman and Nicobar Islands';


  var state;
  var district;
  var year;
  var data={};
  var Crop;
  var Final_list=[];
  var prev=0.0;
  var apple={};



  void setup(var i, var j){
    j=j.toUpperCase();
    var year=[];
    var gg=Set();

    for (int k = 0; k < Crop[i].length; k++) {

      if (Crop[i][k]["District_Name"] == j.toUpperCase() ) {
        gg.add(Crop[i][k]["Crop_Year"]);
      }
    }
    year=gg.toList();
    for(var n=0;n<year.length;n++){

      for(var m=0;m<Crop[i].length;m++){
        if(j==Crop[i][m]['District_Name'] && year[n].toString()==Crop[i][m]['Crop_Year'].toString() ){
          if(Crop[i][m]['Yield']==null){
            continue;
          }
          else if(Crop[i][m]['Yield']>prev){
            prev=Crop[i][m]['Yield'];
            apple=Crop[i][m];
          }
        }
      }
      Final_list.add(apple);
      apple={};
      prev=0.0;

    }
    print(Final_list);
    Navigator.pushNamed(context, "/Crop3_Final",arguments: {
      'crop1final':Final_list,
    });

  }

  @override
  Widget build(BuildContext context) {
    data=ModalRoute.of(context).settings.arguments;
    Crop =data['Crop'];
    return Scaffold(
      backgroundColor: Colors.green[100],


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


            flexibleSpace:FlexibleSpaceBar(title: Text('Crop',
              style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                                            Text("Enter State",style: GoogleFonts.zillaSlab(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 30),),
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
                                                  dropdownValue=newValue;

                                                });
                                              },
                                              items: <String>['Andaman and Nicobar Islands', 'Arunachal Pradesh', 'Andhra Pradesh', 'Bihar','West Bengal','Maharashtra','Manipur','Mizoram','Meghalaya','Nagaland','Tripura','Sikkim','Uttar Pradesh','Uttarakhand','Chhattisgarh','Punjab','Haryana','Himachal Pradesh','Jammu and Kashmir ','Jharkhand','Rajasthan','Odisha','Madhya Pradesh','Gujarat','Telangana ','Goa','Karnataka','Tamil Nadu','Kerala','Meghalaya','Puducherry']
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
                                    Text("Enter District Name:",style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold),),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10.0,2,10,4),
                                      child: Card(
                                        child: TextField(


                                          onChanged: (value){
                                            district=value;
                                            setState(() {
                                              district=value;
                                            });
                                          },
                                          style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                          decoration: InputDecoration(

                                            hintText: "Enter District ",
                                            hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                          ),


                                        ),
                                      ),
                                    ), SizedBox(height: 5,),



                                    RaisedButton(
                                      onPressed: (){

                                        setup(dropdownValue,district);


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

                    ],
                  ),
                ),
              ],
            ),
          ),

        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        backgroundColor: Colors.lightGreenAccent[400],
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/home");
                },
                child: new Icon(Icons.home)),
            title: new Text('Home',
              style: GoogleFonts.zillaSlab(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          BottomNavigationBarItem(
            icon: InkWell(onTap: (){
              Navigator.pushNamed(context, "/Crop");
            },child: new Icon(Icons.grain)),
            title: new Text('Crops',style: GoogleFonts.zillaSlab(fontSize: 15,fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: InkWell(onTap: (){
              Navigator.pushNamed(context, "/home_Weather");
            },child: new Icon(Icons.cloud)),
            title: new Text('Weather',style: GoogleFonts.zillaSlab(fontSize: 15,fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: InkWell(onTap: (){
              Navigator.pushNamed(context, "/Finance");
            },child: new Icon(Icons.monetization_on)),
            title: new Text('Finance',style: GoogleFonts.zillaSlab(fontSize: 15,fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: InkWell(onTap: (){
              Navigator.pushNamed(context, "/Map");
            },child: new Icon(Icons.location_on)),
            title: new Text('Map',style: GoogleFonts.zillaSlab(fontSize: 15,fontWeight: FontWeight.bold)),
          ),

        ],
      ),

    );
  }
}
