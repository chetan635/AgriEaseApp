import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  GoogleMapController _controller;


  final CameraPosition _initialPosition = CameraPosition(target: LatLng(24.903623, 67.198367));

  final List<Marker> markers = [];
  MapType kar=MapType.satellite;
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

  addMarker(cordinate){


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
      appBar: AppBar(
        toolbarHeight: 65,

        backgroundColor: Colors.lightGreenAccent[400],
        title: Text("Find Your Fields",style: GoogleFonts.zillaSlab(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.green[900])),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType:kar,
        onMapCreated: (controller){
          setState(() {
            _controller = controller;
          });
        },
        markers: markers.toSet(),
        onTap: (cordinate){
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 35),
        child: FloatingActionButton(

            child: Icon(Icons.satellite),
            onPressed: (){
              setState(() {
                print('hello');
                if(kar==MapType.normal){
                  kar=MapType.satellite;
                }
                else if(kar==MapType.satellite){
                  kar=MapType.hybrid;
                }
                else if(kar==MapType.hybrid){
                  kar=MapType.normal;
                }

              });
            }
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
//
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 4,
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
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
