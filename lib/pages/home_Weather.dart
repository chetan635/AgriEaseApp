import 'dart:convert';

import 'package:agriease/pages/data_Weather.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data_Weather.dart';
import 'package:agriease/pages/home_Weather2.dart';
class home_Weather extends StatefulWidget {
  @override
  _home_WeatherState createState() => _home_WeatherState();
}

class _home_WeatherState extends State<home_Weather> {
  void setup(var query) async{
      print(query);
      WeatherData instance =WeatherData(name: query);
      await instance.gatdata();
      if(instance.info["cod"]=="404"){
        Navigator.pushNamed(context, "/home_Weather");
      }

      else{Navigator.pushNamed(context, "/home_Weather2", arguments: {
        'info':instance.info,
      });}
  }
  var city;
  Future<String>_loadFromAsset() async {
    return await rootBundle.loadString("assects/RainFall");
  }

  Future parseJson() async {
    String jsonString = await _loadFromAsset();
    final RainFall = jsonDecode(jsonString);
    Navigator.pushNamed(context,'/Rain_State', arguments: {
      'RainFall':RainFall,
    });
  }
  Future<String>_loadfromAsset() async {
    return await rootBundle.loadString("assects/Fertilizer");
  }

  Future parseJson2() async {
    String jsonString = await _loadfromAsset();
    final Fertilizer = jsonDecode(jsonString);
    Navigator.pushNamed(context,'/Fertilizer', arguments: {
      'Fertilizer':Fertilizer,
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      drawer: Drawer(
        child: Column(
          children: [
            Image.asset("assects/AGRI.jpg",
              width: 190,
              height: 300,
            ),
            Container(
              width: 250,
              height: 70,
              child: InkWell(
                onTap: (){
                  parseJson();
                },
                child: Card(
                  shadowColor: Colors.lightGreenAccent,
                  elevation: 30,
                  child: Center(
                    child: Text("RainFall",
                      style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(

              width: 250,
              height: 70,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'/Laws');
                },
                child: Card(
                  shadowColor: Colors.lightGreenAccent,
                  elevation: 30,
                  child: Center(
                    child: Text("Gov. Regulations",
                      style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 250,
              height: 70,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'/Mandi_State');
                },
                child: Card(
                  shadowColor: Colors.lightGreenAccent,
                  elevation: 30,
                  child: Center(
                    child: Text("Market Prices",
                      style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(height: 5,),

            Container(
              width: 250,
              height: 70,
              child: InkWell(
                onTap: (){
                  parseJson2();
                },
                child: Card(
                  shadowColor: Colors.lightGreenAccent,
                  elevation: 30,
                  child: Center(
                    child: Text("Fertilizers",
                      style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: 250,
              height: 70,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'/Calculator');
                },
                child: Card(
                  shadowColor: Colors.lightGreenAccent,
                  elevation: 30,
                  child: Center(
                    child: Text("Calculator",
                      style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),

                ),
              ),
            ),
            SizedBox(height: 5,),
          ],
        ),
      ),

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


            flexibleSpace:FlexibleSpaceBar(title: Text('Weather Info',
              style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                  Container(
                    child: Image.asset('assects/EMP.gif',fit: BoxFit.fill,height: 350,)
                  ),
                Container(
                  child: Column(
                    children: [
                      Text("Search Weather",
                        style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      Text("Instanly",
                        style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Form(

                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Card(
                              elevation: 30,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: TextFormField(
                                  style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                  onFieldSubmitted: (value){
                                    setState(() {
                                      city=value;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Enter City Name",
                                    hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold)
                                  ),


                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 370,
                            height: 52,
                            child: RaisedButton(onPressed:(){setup(city);},
                              color:Colors.lightBlueAccent ,
                            child: Text("Submit",
                              style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            ),
                          )
                        ],
                      )),
                ),
                Container(height: 50,),

              ],
            ),
          ),

        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
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
