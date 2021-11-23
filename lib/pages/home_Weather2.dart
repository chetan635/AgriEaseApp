import 'package:flutter/material.dart';
import 'package:agriease/pages/data_Weather.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data_Weather.dart';

class home_Weather2 extends StatefulWidget {
  @override
  _home_Weather2State createState() => _home_Weather2State();
}

class _home_Weather2State extends State<home_Weather2> {


  Map data;
  var finallist;


  @override
  Widget build(BuildContext context) {


    data=ModalRoute.of(context).settings.arguments;
    finallist  =data['info'];
    var main=finallist['weather'][0]['main'];
    if(main=="Haze"){
      main="Smoke";
    }if(main=="Fog"){
      main="Smoke";
    }
    var Describe=finallist['weather'][0]['description'];
    var tempmax=finallist['main']['temp_max'];
    var tempmin=finallist['main']['temp_min'];
    var Cityname=finallist['name'];
    var pressure=finallist['main']['pressure']/1000;
    var humidity=finallist['main']['humidity'];
    var wind=finallist['wind']['speed'];
    var lon=finallist['coord']['lon'];
    var lat=finallist['coord']['lat'];
    var visibility=finallist['visibility']/1000;
    var A,B,C,D;

    Color tmpColor  ;
    visibility=double.parse(visibility.toStringAsFixed(1));
    if(main=='Clear'){
        tmpColor=Colors.amberAccent;
    }
    else if(main=='Clouds'){
      tmpColor=Colors.cyan;
    }
    else if(main=='haze'){
      tmpColor=Colors.orange;
    }
    else if(main=='Rain'){
      tmpColor=Colors.grey[200];
    }
    else if(main=='Snow'){
      tmpColor=Colors.white70;
    }
    else if(main=='Smoke'){
      tmpColor=Colors.tealAccent;
    }
    else if(main=='Mist'){
      tmpColor=Colors.deepPurpleAccent;
    }


    tempmin=double.parse("$tempmin");
    tempmax=double.parse("$tempmax");

    tempmin=tempmin-273;
    tempmax=tempmax-273;
    tempmax=double.parse(tempmax.toStringAsFixed(2));
    tempmin=double.parse(tempmin.toStringAsFixed(2));



    return Scaffold(
      backgroundColor: tmpColor,


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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Colors.lightGreenAccent,
                    elevation: 30,
                    shadowColor: Colors.lightGreenAccent,
                    child: Center(child: Text("$Cityname" ,style: GoogleFonts.zillaSlab(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 30,
                    shadowColor: Colors.lightGreenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assects/$main.jpg",width: 150,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$Describe",
                              style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$tempmax °C",style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            ),
                            Text("Max",style: GoogleFonts.zillaSlab(fontSize:15,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$tempmin °C",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            ),
                            Text("min",style: GoogleFonts.zillaSlab(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green[700]),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 130,
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.greenAccent,
                        child: Column(
                          children: [
                            Text("Humidity",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            Image.network("https://media.istockphoto.com/vectors/humidity-icon-isolated-weather-and-meteorology-thermometer-symbol-vector-id1138430669?k=6&m=1138430669&s=612x612&w=0&h=y8EmYRZlpMUu5TqRlG-UsAz2StUPpzIK1DcuKJnfkN8=",width: 70,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$humidity %",style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            )
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: 130,
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.greenAccent,
                        child: Column(
                          children: [

                            Text("Pressure",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            Image.network("https://thumbs.dreamstime.com/b/thermometer-cloud-low-temperature-icon-simple-glyph-vector-weather-set-ui-ux-website-mobile-application-white-156322789.jpg",width: 70,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$pressure B",style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            )
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: 130,
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.greenAccent,
                        child: Column(
                          children: [
                            Text("W.Speed",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiIBeRwYCJ9959vH7r_UmNtWGznfyEz_KvLw&usqp=CAU",width: 70,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$wind Km/hr",style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 130,
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.greenAccent,
                        child: Column(
                          children: [
                            Text("Longitud",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            Image.asset("assects/long.jpg",width: 70,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$lon",style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            )
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: 130,
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.greenAccent,
                        child: Column(
                          children: [

                            Text("Visibility",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLbn6476OkxJKdDm9Jp_CGREcEGdcfELM6uw&usqp=CAU",width: 70,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$visibility Km",style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            )
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: 130,
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.greenAccent,
                        child: Column(
                          children: [
                            Text("Latitude",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            Image.asset("assects/latt.jpg",width: 70,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$lat",style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[700]),),
                            )
                          ],
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
