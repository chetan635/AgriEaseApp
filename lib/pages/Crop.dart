import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Crop extends StatefulWidget {
  @override
  _CropState createState() => _CropState();
}

class _CropState extends State<Crop> {
  Future<String>_loadFromAsset() async {
    return await rootBundle.loadString("assects/crop.json");
  }
  var Crop;
  Future parseJson(var route) async {
    String jsonString = await _loadFromAsset();
    final Crop2 = jsonDecode(jsonString);
    setState(() {
      Crop=Crop2;
    });
    Navigator.pushNamed(context,'$route', arguments: {
      'Crop':Crop,
    });

  }
  Future<String>_loadFromAsset2() async {
    return await rootBundle.loadString("assects/RainFall");
  }

  Future parseJson3() async {
    String jsonString = await _loadFromAsset2();
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
                  parseJson3();
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


            flexibleSpace:FlexibleSpaceBar(title: Text('Crop Info',
              style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                        parseJson('/Crop1');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assects/Crop123.jpg',width: 70,),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('CropType And \n Its Yield',overflow: TextOverflow.ellipsis,style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Checkout Corresponding \nresults  using State,District,year',overflow: TextOverflow.ellipsis,style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                ),
                                SizedBox(height: 10,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                        parseJson('/Crop2');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Yield,CropType\nAnd Year',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Checkout Corresponding results\n using State,District,\nSeason',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assects/Crop123.jpg',width: 70,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                        parseJson('/Crop3');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assects/Crop123.jpg',width: 70,),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Max Yield  \n each Year',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Checkout Corresponding results \n using State,District ',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                ),
                                SizedBox(height: 10,),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('CropType And \n Its Yield',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Checkout Corresponding results \n using State,District,year',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ),
                              SizedBox(height: 10,),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assects/Crop123.jpg',width: 70,),
                          ),
                        ],
                      ),
                    ),
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
