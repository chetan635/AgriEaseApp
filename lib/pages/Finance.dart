import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:agriease/pages/task.dart';

class Finance extends StatefulWidget {
  @override
  _FinanceState createState() => _FinanceState();
}

class _FinanceState extends State<Finance> {
  var dropdownvalue="Seeds";
  var type;
  var amount;

  var dataa;


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
  List<charts.Series<Task, String>> _seriesPieData;
  List<Task> mydata;
  _generateData(mydata) {
    var i=0;


    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.taskDetails,
        measureFn: (Task task, _) => task.taskVal,


        id: 'tasks',
        data: mydata,
        labelAccessorFn: (Task row, _) => "${row.taskVal}",
      ),
    );
  }



  final databaseReference = FirebaseFirestore.instance;
  final User user = FirebaseAuth.instance.currentUser;
  void createRecord(var spendtype,var amount) async {
    final User user = FirebaseAuth.instance.currentUser;

    final snapShot = await FirebaseFirestore.instance.collection('${user.email}').doc("$spendtype").get();

    if (snapShot.exists){
      var extra=amount;
      extra=extra+snapShot.data()["Spend"];
      await databaseReference.collection("${user.email}")
          .doc("$spendtype")
          .update({
        'Spend_type': spendtype,
        'Spend': extra
      });
    }

    else{
      await databaseReference.collection("${user.email}")
          .doc("$spendtype")
          .set({
        'Spend_type': spendtype,
        'Spend': amount
      });

    }


  }
  double total = 0.0;

  @override
  initState() {
    super.initState();
    queryValues();
  }

  void queryValues() {
    FirebaseFirestore.instance
        .collection('${user.email}')
        .snapshots()
        .listen((snapshot) {
      double tempTotal = snapshot.docs.fold(0, (tot, doc) => tot + doc.data()["Spend"]);
      setState(() {total = tempTotal;});
      debugPrint(total.toString());
    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
        centerTitle: true,
        toolbarHeight: 80,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent[400],
        title: Text("Finance",style: GoogleFonts.zillaSlab(fontSize: 38,fontWeight: FontWeight.bold,color: Colors.green[900])),
      ),

//      Content
       body:  SingleChildScrollView(
         physics: BouncingScrollPhysics(),
         child: Padding(
           padding: const EdgeInsets.fromLTRB(10, 2, 10,2),
           child: Column(

             children: [
               Container(
                 color: Colors.green[900],

                 child: Card(
                   elevation: 20,
                   child: Center(
                     child: Column(
                       children: [
                         SizedBox(height: 5,),
                         Text("Spend fields",style: GoogleFonts.zillaSlab(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 30),),
                         SizedBox(height: 5,),
                         DropdownButton<String>(
                           value: dropdownvalue,
                           icon: Icon(Icons.arrow_downward),
                           iconSize: 24,
                           elevation: 16,
                           style: GoogleFonts.zillaSlab(color: Colors.green[900],fontWeight: FontWeight.bold,fontSize: 20),
                           underline: Container(

                             color: Colors.deepPurpleAccent,
                           ),
                           onChanged: (String newValue) {
                             setState(() {
                               dropdownvalue=newValue;
                             });
                           },
                           items: <String>['Seeds', 'Fertilizers', 'Pesticides', 'Equipments','Electricity bill','water bill','Maintainance','Health','Household','Animal food','Vehicles Fuel','Others']
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
                 ),
               ),
               SizedBox(height: 4,),
               Container(
                 color: Colors.green[900],
                 width: 400,
                 child: Column(
                   children: [
                     Container(
                       child: Card(
                         elevation: 20,
                         child: Form(

                             child: Column(
                               children: [
                                 SizedBox(height: 5,),
                                 Text("Spend",style:GoogleFonts.zillaSlab(color: Colors.green[900],fontSize: 30,fontWeight: FontWeight.bold),),
                                 Padding(
                                   padding: const EdgeInsets.all(3.0),
                                   child: Padding(
                                     padding: const EdgeInsets.all(3.0),
                                     child: TextFormField(

                                       onFieldSubmitted: (value){
                                         setState(() {
                                           try{
                                             amount=double.parse(value);
                                           }catch(e){
                                             showDialog(
                                                 context: context,
                                                 builder: (BuildContext context) {
                                                   return AlertDialog(
                                                     title: Text("Error Occured !",style:GoogleFonts.zillaSlab(fontSize:30,fontWeight: FontWeight.bold,color: Colors.red )),
                                                     content: Text("Invalid Input"),
                                                     actions: [
                                                       FlatButton(
                                                         child: Text("Ok"),
                                                         onPressed: () {
                                                           Navigator.of(context).pop();
                                                         },
                                                       )
                                                     ],
                                                   );
                                                 });
                                           }
//
                                         });
                                       },
                                       style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),
                                       decoration: InputDecoration(

                                         hintText: "Enter amount..",
                                         hintStyle: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold),


                                       ),


                                     ),
                                   ),
                                 ),
                                 Container(height:46,width: 150,child: RaisedButton(color: Colors.blue,child:Text("Add",style: GoogleFonts.zillaSlab(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20),),
                                     onPressed:(){
                                       createRecord(dropdownvalue,amount);

                                     }))
                                 ,SizedBox(height: 10,),

                               ],
                             )),
                       ),
                     ),


                   ],
                 ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   color: Colors.blueGrey[400],
                   width: 350,
                   child: Card(
                     elevation: 30,
                     child: Center(child: Column(
                       children: [
                         Text('Total Spendings',style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.pink),),
                         Text(' ₹ ${total}',style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                       ],
                     )),
                   ),
                 ),
               ),
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   color: Colors.blueGrey[400],
                   width: 350,
                   child: Card(
                     elevation: 30,
                     child: Center(child: Text('Contents',style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                   ),
                 ),
               ),
               StreamBuilder(
                 stream: FirebaseFirestore.instance.collection('${user.email}').snapshots(),
                 builder: (context,snapshot){
                   if(snapshot.hasData){
                     return ListView.builder(
                         physics: BouncingScrollPhysics(),
                         shrinkWrap: true,
                         itemCount: snapshot.data.documents.length,
                         itemBuilder: (context,index){
                           DocumentSnapshot documentSnapshot=snapshot.data.documents[index];
                           return Container(
                             color: Colors.amberAccent,
                             child: Card(
                               elevation: 10,
                               child: Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Column(
                                   children: [
                                     Text(documentSnapshot["Spend_type"],style: GoogleFonts.zillaSlab(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.pink),),
                                     Text(" ₹ "+documentSnapshot["Spend"].toString(),style: GoogleFonts.zillaSlab(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.green[900]),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(width: 5,),
                                          InkWell(
                                            onTap: (){
                                              FirebaseFirestore.instance.collection('${user.email}').doc(documentSnapshot["Spend_type"]).delete();

                                            },
                                            child: Icon(
                                                Icons.restore_from_trash,
                                              size: 32,
                                            ),
                                          ),
                                        ],
                                      )
                                   ],

                                 ),
                               ),
                             ),
                           );
                         }

                     );
                   }
                   if (!snapshot.hasData){
                     print('test phrase');
                     return Text("Loading.....");
                   }

                 },

               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   color: Colors.blueGrey[400],
                   width: 350,
                   child: Card(
                     elevation: 30,
                     child: Center(child: Text('Pi Chart',style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                   ),
                 ),
               ),

               Container(
                   height: 700,
                   child: _buildBody(context)),
             ],
           ),
         ),
       ),




      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
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
  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('${user.email}').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return LinearProgressIndicator();
        } else {
          List<Task> task = snapshot.data.docs
              .map((documentSnapshot) => Task.fromMap(documentSnapshot.data()))
              .toList();
          return _buildChart(context, task);
        }
      },

    );

  }
  Widget _buildChart(BuildContext context, List<Task> taskdata) {
    mydata = taskdata;
    _generateData(mydata);
    return Container(
      color: Colors.green[900],
      child: Card(
        elevation: 30,
        shadowColor: Colors.lightGreenAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Pie Chart analysis',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Expanded(
                    child: charts.PieChart(_seriesPieData,
                        animate: true,
                        animationDuration: Duration(seconds: 2),
                        behaviors: [
                          new charts.DatumLegend(
                            outsideJustification:
                            charts.OutsideJustification.endDrawArea,
                            horizontalFirst: false,
                            desiredMaxRows: 12,
                            cellPadding:
                            new EdgeInsets.only(right: 2.0, bottom: 2.0,top:2.0),
                            entryTextStyle: charts.TextStyleSpec(
                                color: charts.MaterialPalette.pink.shadeDefault,
                                fontFamily: 'Georgia',
                                fontSize: 20),
                          )
                        ],
                        defaultRenderer: new charts.ArcRendererConfig(
                            arcWidth: 115,
                            arcRendererDecorators: [

                              new charts.ArcLabelDecorator(
                                  labelPosition: charts.ArcLabelPosition.inside)
                            ])),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
