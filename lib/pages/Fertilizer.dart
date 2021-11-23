import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Fertilizer extends StatefulWidget {
  @override
  _FertilizerState createState() => _FertilizerState();
}

class _FertilizerState extends State<Fertilizer> {
  Map data;
  var Fertilizer;

  void apple(String name){
    Navigator.pushNamed(context,'/Fertilizer_Final', arguments: {
      'Fertilizer':Fertilizer[name],
    });
  }

  @override
  Widget build(BuildContext context) {

    data=ModalRoute.of(context).settings.arguments;
    Fertilizer  =data['Fertilizer'];
    print(Fertilizer);

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


            flexibleSpace:FlexibleSpaceBar(title: Text('Soil Types',
              style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                          apple('Sandy');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                width: 170,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: AssetImage('assects/Sandy.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                                  color: Colors.redAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Sandy',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Sandy Soil is light, warm, dry and tend to  be acidic and low in nutrients.Sandy soils are often known as light soils due to their high proportion of sand and little clay (clay weighs more than sand).',style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                        apple('Loamy');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                width: 170,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: AssetImage('assects/Loamy.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                                  color: Colors.redAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Loamy',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Loam soil is a mixture of sand, silt and clay that are combined to avoid the negative effects of each type.These soils are fertile, easy to work with and provide good drainage. Depending on their predominant composition they can be either sandy or clay loam.',style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                        apple('Black');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                width: 170,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: AssetImage('assects/Black.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                                  color: Colors.redAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Black',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('The black soils are also called regur (from the Telugu word Reguda) and black cotton soils because cotton is the most important crop grown on these soils. Several theories have been put forward regarding the origin of this group of soils but most pedologists believe that these soils have been formed due to the solidifaction of lava spread over large areas during volcanic activity in the Deccan Plateau, thousands of years ago.',style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                        apple('Red');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                width: 170,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: AssetImage('assects/Red.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                                  color: Colors.redAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Red',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Red soil is a type of soil that develops in a warm, temperate, moist climate under deciduous or mixed forest, having thin organic and organic-mineral layers overlying a yellowish-brown leached layer resting on an illuvium red layer. Red soils are generally derived from crystalline rock.',style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.green[900],
                    child: InkWell(
                      onTap: (){
                        apple('Clayey');
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.lightGreenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                width: 170,
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover, image: AssetImage('assects/Clayey.jpg')),
                                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                                  color: Colors.redAccent,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Clayey',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Clay Soil is a heavy soil type that benefits from high nutrients. Clay soils remain wet and cold in winter and dry out in summer.These soils are made of over 25 percent clay, and because of the spaces found between clay particles, clay soils hold a high amount of water.',style: GoogleFonts.zillaSlab(fontSize: 20,color: Colors.green[900]),),
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

    );
  }
}
