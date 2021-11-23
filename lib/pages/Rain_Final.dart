import 'package:agriease/pages/data_Weather.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data_Weather.dart';
import 'package:agriease/pages/home_Weather2.dart';
import 'package:pie_chart/pie_chart.dart';

class Rain_Final extends StatefulWidget {
  @override
  _Rain_FinalState createState() => _Rain_FinalState();
}

class _Rain_FinalState extends State<Rain_Final> {

  Map data;
  var FinalInfo;

  @override
  Widget build(BuildContext context) {

    data=ModalRoute.of(context).settings.arguments;
    FinalInfo  =data['FinalInfo'];
    print(FinalInfo);

    Map<String, double> dataMap = {
      "Jan": double.parse('${FinalInfo['JAN']}'),
      "FEB": double.parse('${FinalInfo['FEB']}'),
      "MAR": double.parse('${FinalInfo['MAR']}'),
      "APR": double.parse('${FinalInfo['APR']}'),
      "MAY": double.parse('${FinalInfo['MAY']}'),
      "JUN": double.parse('${FinalInfo['JUN']}'),
      "JUL": double.parse('${FinalInfo['JUL']}'),
      "AUG": double.parse('${FinalInfo['AUG']}'),
      "SEP": double.parse('${FinalInfo['SEP']}'),
      "OCT": double.parse('${FinalInfo['OCT']}'),
      "NOV": double.parse('${FinalInfo['NOV']}'),
      "DEC": double.parse('${FinalInfo['DEC']}'),


    };


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


            flexibleSpace:FlexibleSpaceBar(title: Text('Weather Info',
              style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 30,
                      shadowColor: Colors.lightGreenAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assects/Rain.jpg',width: 200,),
                          Column(
                            children: [
                              Text('Annual',style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              Text('RainFall',style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('${FinalInfo['ANNUAL']} mm',style: GoogleFonts.zillaSlab(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                              )
                            ],
                          )
                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(child: Text('RainFall PiChart',style: GoogleFonts.zillaSlab(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.green[900],),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.amberAccent[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 50,
                    shadowColor: Colors.lightGreenAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        child: PieChart(
                          dataMap: dataMap,
                          animationDuration: Duration(milliseconds: 1100),
                          chartLegendSpacing: 40,
                          chartRadius: MediaQuery.of(context).size.width / 1.3,
                          colorList: [Colors.amber,Colors.tealAccent,Colors.redAccent[400],Colors.lightGreenAccent,Colors.blueAccent,Colors.cyanAccent,Colors.pink,Colors.purpleAccent,Colors.grey,Colors.indigoAccent,Colors.yellowAccent,Colors.brown],
                          initialAngleInDegree: 0,
                          chartType: ChartType.ring,
                          ringStrokeWidth: 60,
                          centerText: "Covid-19",
                          legendOptions: LegendOptions(
                            showLegendsInRow: false,
                            legendPosition: LegendPosition.right,
                            showLegends: true,
                            legendShape: BoxShape.rectangle,
                            legendTextStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green[900],
                              fontSize: 20,
                            ),
                          ),
                          chartValuesOptions: ChartValuesOptions(
                            showChartValueBackground: true,
                            showChartValues: true,
                            showChartValuesInPercentage: false,
                            showChartValuesOutside: true,
                            chartValueBackgroundColor: Colors.transparent,
                            chartValueStyle: TextStyle(color: Colors.white,fontSize: 0,fontWeight: FontWeight.bold),
                            decimalPlaces: 0,

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(child: Text('RainFall Interval',style: GoogleFonts.zillaSlab(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.green[900],),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            color: Colors.green[900],
                            width: 185,
                            height: 140,
                            child: Card(

                              elevation: 30,
                              shadowColor: Colors.lightGreenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  Center(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Jan-Feb Data",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                  )),
                                  Center(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${FinalInfo['Jan-Feb']}",style: GoogleFonts.zillaSlab(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              color: Colors.green[900],
                              width: 185,
                              height: 80,
                              child: Card(

                                elevation: 30,
                                shadowColor: Colors.lightGreenAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  children: [
                                  Center(child: Text("Mar-May Data",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                                  Center(child: Text("${FinalInfo['Mar-May']}",style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),)),

                                  ],
                                ),
                              )
                          ),
                        )],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            color: Colors.green[900],
                            width: 185,
                            height: 80,
                            child: Card(

                              elevation: 30,
                              shadowColor: Colors.lightGreenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  Center(child: Text("Jun-Sep Data",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                                  Center(child: Text("${FinalInfo['Jun-Sep']}",style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            color: Colors.green[900],
                            width: 185,
                            height: 140,
                            child: Card(

                              elevation: 30,
                              shadowColor: Colors.lightGreenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  Center(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Oct-Dec Data",style: GoogleFonts.zillaSlab(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                  )),
                                  Center(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("${FinalInfo['Oct-Dec']}",style: GoogleFonts.zillaSlab(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                                  )),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              ],
            ),
          ),

        ],

      ),

    );
  }
}
