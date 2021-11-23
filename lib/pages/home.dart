import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<home> {

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
  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => Container(
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
        child: new AlertDialog(
          title: new Text('Are you sure?',style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]),),
          content: new Text('Do you want to exit an App',style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new GestureDetector(
                onTap: () => Navigator.of(context).pop(false),
                child: Text("NO",style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new GestureDetector(
                onTap: () => Navigator.of(context).pop(true),
                child: Text("YES",style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
              ),
            ),
          ],
        ),
      ),
    ) ??
        false;
  }


  final User user = FirebaseAuth.instance.currentUser;


  @override

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:_onBackPressed,
      child: Scaffold(

        backgroundColor: Colors.green[100],
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Image.asset("assects/jjj.png",
              width: 140,
              ),
              Text('${user.email}',style: GoogleFonts.zillaSlab(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green[900]),),
              SizedBox(height: 20,),
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
              Container(
                width: 250,
                child: RaisedButton(
                  onPressed:(){
                    signOut();
                  },
                  color:Colors.lightGreenAccent,
                  child: Text("Logout",
                    style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey[900]),
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


              flexibleSpace:FlexibleSpaceBar(title: Text('Agri Ease',
                style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: CarouselSlider(
                          items: [

                            //1st Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1530469844363-4cf68b34327a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNyb3B8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //2nd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.pexels.com/photos/247597/pexels-photo-247597.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //3rd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://media.gettyimages.com/photos/nepalese-farmer-pick-marigold-flowers-for-the-tihar-festival-at-on-picture-id1229596950?k=6&m=1229596950&s=612x612&w=0&h=E7hqWk4n3n33FSAX4muqjRPyFvO4uqCf9XTdj7IIULc="),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //4th Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://media.gettyimages.com/photos/farmer-plowing-field-using-wooden-plough-during-summer-season-picture-id1201446563?k=6&m=1201446563&s=612x612&w=0&h=1oZ8Rt17Vmfy9JxMc-uMyJEw4KaZ_FI2xAINByuxPPg="),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //5th Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://media.gettyimages.com/photos/workers-handpick-tea-leaves-at-the-bogawantalawa-tea-estates-in-sri-picture-id482174600?k=6&m=482174600&s=612x612&w=0&h=8wvmgU-RJnc4w55NDNkBumD7GZFlm0nN4wYpe8csYbU="),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1505471768190-275e2ad7b3f9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8ZmFybWVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1500937386664-56d1dfef3854?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8ZmFybWVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1483569577148-f14683bed627?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGZhcm1lcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.pexels.com/photos/226615/pexels-photo-226615.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.pexels.com/photos/1583571/pexels-photo-1583571.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://media.gettyimages.com/photos/workers-handpick-tea-leaves-at-the-bogawantalawa-tea-estates-in-sri-picture-id482174600?k=6&m=482174600&s=612x612&w=0&h=8wvmgU-RJnc4w55NDNkBumD7GZFlm0nN4wYpe8csYbU="),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.pexels.com/photos/460223/pexels-photo-460223.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://images.pexels.com/photos/235925/pexels-photo-235925.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://cdn.pixabay.com/photo/2020/06/28/01/31/indian-5347547__340.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://thumbs.dreamstime.com/b/busy-indian-farmer-ploughing-paddy-field-35675926.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://thumbs.dreamstime.com/b/indian-farmer-ploughing-indian-farmer-ploughing-field-rural-karnataka-99024972.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://thumbs.dreamstime.com/b/indian-old-farmer-smiles-using-laptop-internet-grandpa-happy-to-use-loves-technology-works-sitting-cot-farm-smile-184616100.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://thumbs.dreamstime.com/b/senior-indian-farmer-waiting-rain-latur-maharashtra-183417536.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                          ],

                          //Slider Container properties
                          options: CarouselOptions(
                            height: 250.0,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds: 1000),
                            viewportFraction: 0.82,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(child: Text('Contents',style: GoogleFonts.zillaSlab(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: CarouselSlider(
                          items: [

                            //1st Image of Slider
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Crop.jpg',width: 85,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Crops',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            //2nd Image of Slider
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Weather.jpg',width: 85,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Weather',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            //3rd Image of Slider
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Rain2.jpg',width: 95,),
                                    Text('Crops',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/mandi.jpg',width: 85,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Mandi',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Ferti2.jpg',width: 85,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Fertilizer',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Calc2.jpg',width: 85,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Calculator',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Map.jpg',width: 85,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Maps',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Gov.jpg',width: 85,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Regulations',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,

                                  colors: [
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                    Colors.yellow[300],
                                    Colors.yellow[900],
                                  ],
                                ),
                              ),
                              width: 360,
                              margin: EdgeInsets.all(2.0),
                              child: Card(
                                child: Column(
                                  children: [
                                    Image.asset('assects/Finan.jpg',width: 90,),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                                      child: Text('Finance',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            //4th Image of Slider


                          ],

                          //Slider Container properties
                          options: CarouselOptions(
                            height: 170.0,
                            enlargeCenterPage: false,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration: Duration(milliseconds: 1000),
                            viewportFraction: 0.60,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(child: Text('Description',style: GoogleFonts.zillaSlab(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.green[900],
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset('assects/Crop.jpg',width: 150,),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Crops",
                                style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text('❖ Examine the previous years records to determine your future\n ❖ Find best yields of crops in your Area\n ❖ Finds best crops for your farms based on state and district wise data\n ❖ Find best crops in your district based on type or season\n ❖ Help yourself by using best knowledge !',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:  Image.asset('assects/Weather.jpg',width: 150,)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Weather",
                              style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("❖Weather forecast is the way to determine how the weather behaves.\n❖ Current weather outcome using city as a input.\n❖ Helps in determining best weather condition for your crop.\n❖ Determines humidity,wind speed and pressure such rare weather components.\n❖ Also determines maximum and minimum temperature of that place.",style: GoogleFonts.zillaSlab(fontSize: 20,),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:  Image.asset('assects/Rain2.jpg',width: 150,)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Rainfall",
                              style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('❖ Rain is a major component of the water cycle and is responsible for depositing most of the fresh water on the Earth.\n ❖ Find Rainfall data in your state and in your city\n ❖ Based on data you can find pi chart showing Month wise rainfall in your district\n❖ Find Annual rainfall in your area ',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:   Image.asset('assects/mandi.jpg',width: 150,)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Mandi(Market)",
                              style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child:Text("❖Agricultural marketing covers the services involved in Gilmaan moving an agricultural product from the farm to the consumer.\n❖ Find Current Max and Min Prices of various crops \n❖ It will help you to update your knowledge on current marcket situations daily\n❖ It Helps you to find best time to sell Your crops According to market \n",style: GoogleFonts.zillaSlab(fontSize: 20,),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child:  Image.asset('assects/Ferti2.jpg',width: 150,)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Fertilizer",
                              style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("❖ A chemical or natural substance added to soil or land to increase its fertility.\n❖ Helps in determining best fertilizer for your crop. \n❖ Provides fertilizers for crops according to soil type.\n❖ Also gives NPK values for that fertilizer. \n",style: GoogleFonts.zillaSlab(fontSize: 20,),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('assects/Calc2.jpg',width: 150,)
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Calculations",
                              style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("❖ Basic Calculations before Farming are essential to get best Yield \n❖ In 1 st Calculation You wii be able to find Average no of plants in your field \n❖ In 2 nd Calculation will help you to know the amount of Nitrogen,phosphorus and potessium in your Fertilizer\n❖ In 3 rd Calculation you will be able to find Yield of your Crops \n",style: GoogleFonts.zillaSlab(fontSize: 20,),),
                          )
                        ],
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
                        shadowColor: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset('assects/Map.jpg',width: 150,)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Maps",
                                style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("❖ A map is a symbolic depiction emphasizing relationships between elements of some space, such as objects, regions, or themes.\n❖ It provides an overlook to your farming field. \n❖ It provides a normal,satellite and hybrid view of your field.\n❖ Also provides view of nearby cropping fields. \n",style: GoogleFonts.zillaSlab(fontSize: 20,),),
                            )
                          ],
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
                        shadowColor: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset('assects/Gov.jpg',width: 150,)
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Gov. Regulations",
                                style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("❖Decision making resulting in policies and legislation is the core business of any government.\n❖ By making these documents available online as structured and computer-searchable text, (third party) ICT services can be developed that will enable a better sharing and implementation of these policies and legislation, \n❖ Having lists of applicable policies and regulations, and extracting any data they contain (such as lists of subsidies) can also be helpful.\n❖ Our App will show you Indian Government regulations in various states in india \n",style: GoogleFonts.zillaSlab(fontSize: 20,),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.green[900],
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assects/Contact.jpg'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Contact Us',style: GoogleFonts.zillaSlab(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 170,
                                            child: Card(
                                              shadowColor: Colors.lightGreenAccent,
                                              elevation: 30,
                                              child: Image.network("https://i.pinimg.com/originals/df/3d/af/df3daf9a9cb72b1c6b5f2e52846c2240.jpg",height: 100,width: 100,),
                                            ),
                                          ),
                                          Container(
                                            width: 170,
                                            child: Card(
                                              shadowColor: Colors.lightGreenAccent,
                                              elevation: 30,
                                              child: Image.network("https://www.bresslercompany.com/wp-content/uploads/2014/02/Linked-In.png",height: 100,width: 100,),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: 170,
                                            child: Card(
                                              shadowColor: Colors.lightGreenAccent,
                                              elevation: 30,
                                              child: Image.network("https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",height: 100,width: 100,),
                                            ),
                                          ),
                                          Container(
                                            width: 170,
                                            child: Card(
                                              shadowColor: Colors.lightGreenAccent,
                                              elevation: 30,
                                              child: Image.network("https://1.bp.blogspot.com/-CYDSHib_wQY/X5G7l5LqTDI/AAAAAAAAklg/uJxZb4zeb0EXG_Rle2xUJGeVT7dzPUHDQCLcBGAsYHQ/s2048/Gmail%2Bnew%2BLogo%2B2020.webp",height: 100,width: 100,),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
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
          currentIndex: 0,
          backgroundColor: Colors.lightGreenAccent[400],
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "/");
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
      ),
    );


  }
  Future signOut() async{
    try{
      await FirebaseAuth.instance.signOut();
      Navigator.pushReplacementNamed(context, "/Login");
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }


}
