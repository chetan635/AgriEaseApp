import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'data.dart';
import 'package:google_fonts/google_fonts.dart';


class Loading1 extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading1> {



  void setupWorldTime() async{
    Data instance=Data("https://api.covid19india.org/data.json");
    await instance.gatdata();
    await instance.gatdata();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'info':instance.info,

    });


  }

  int counter=0;
  @override
  void initState() {
    super.initState();
    setupWorldTime();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,

            colors: [
              Colors.green[100],
              Colors.greenAccent,
              Colors.lightGreenAccent,
              Colors.lightGreen,
              Colors.green[300],
            ],
          ),
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assects/crop.gif',height: 180,width: 240,),
                SizedBox(height: 0,),
                Text('Agriease',style: GoogleFonts.zillaSlab(color: Colors.green[900],fontSize: 30,fontWeight: FontWeight.bold),),
              ],
            )),
      ),
    );
  }
}