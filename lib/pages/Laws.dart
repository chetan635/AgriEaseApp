import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flip_card/flip_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Laws extends StatefulWidget {
  @override
  _LawsState createState() => _LawsState();
}

class _LawsState extends State<Laws> {
  @override
  Widget build(BuildContext context) {
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


            flexibleSpace:FlexibleSpaceBar(title: Text('Gov. Regulations',
              style: GoogleFonts.zillaSlab(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.green[900]),),centerTitle: true,),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.network('https://i.pinimg.com/originals/f1/76/ff/f176ff9271c402b6753ba3b0169f17a1.jpg',width: 70,),
                      Column(
                        children: [
                          Center(child: Text('Government Rules And Regulations',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900]),),),
                          Center(child: Text('For Different States',style: GoogleFonts.zillaSlab(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green[900])),),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Central Acts',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Multi-State Cooperative Societies Act,1984 (51 of 1985)\n ❖ The Seeds Act, 1966\n ❖ Plant Varieties and Farmers’ Right Act,2001\n ❖ Co-operative Societies Act, 1912\n ❖ The Agricultural Produce (Grading and Marking) Act, 1937',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text('State Laws ',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.green[900],
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Andhra Pradesh',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖Agricultural Produce and Livestock Markets Act, 1966\n ❖ Andhra Pradesh Cotton Seeds (Regulation of Supply, Distribution,\n ❖ Sale and Fixation of Sale Price) Act, 2007\n ❖ Andhra Pradesh Non-Agricultural Land Assessment Act, 1963 \n ❖ Andhra Pradesh Irrigation Utilisation and Command Area\n ❖ Development Act, 1984',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Arunachal Pradesh',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Arunachal Pradesh Water Resources Regulatory Authority Act, 2006\n ❖ Arunachal Pradesh Agricultural Produce Marketing Regulation (Amendment) Act, 2006\n ❖ Arunachal Pradesh Urban and Country Planning Act, 2007\n ❖ Arunachal Pradesh Co-operative Societies Act, 1978\n ❖ Arunachal Pradesh Soil and Water Conservation Act, 1991\n ❖ Arunachal Pradesh Agricultural Produce Marketing (Regulation) Act, 1989',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Assam',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Agricultural Credit Operations and Miscellaneous Provisions (Banks) Act 1977\n❖ Agricultural Pests and Diseases Act, 1950\n❖ Agricultural Produce Market Act, 1972\n❖ Administrative Tribunal Act, 1977',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Goa',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Insecticides Act, 1968\n❖ Goa, Daman and Diu Agricultural Tenancy Act, 1964',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Gujarat',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Insecticides Act, 1968\n❖ Seed Act, 1966\n❖ Gujrat Agricultural Universities Act, 2004\n❖ Gujarat Fisheries Act, 2003',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Himachal Pradesh',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Holdings (Consolidation and Prevention of Fragmentation) Act, 1971\n❖ Agricultural Credit Operations and Miscellaneous Provisions (Banks) Act, 1972\n❖ Agricultural Pests, Diseases and Noxious Weeds Act, 1969\n❖ Agricultural and Horticultural Produce Marketing (Development and Regulation) Act, 2005\n❖ Agriculture and Rural Development Banks Act, 1979\n❖ Debt Reduction Act, 1976\n❖ The Himachal Pradesh Universities of Agriculture, Horticulture and Forestry Act, 1986\n❖ Himachal Pradesh Livestock Improvement Act, 1968',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Haryana',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Haryana and Punjab Agricultural Universities (Haryana Amendment) Act, 1991\n❖ Relief of Agricultural Indebtedness Act, 1989\n❖ Haryana and Punjab Agricultural Universities (Haryana Amendment) Act, 1997\n❖ The Punjab Agricultural Produce Markets (Haryana Amendment) Act, 2005\n❖ East Punjab Agricultural Pests, Diseases and Noxious Weeds Act, 1949\n❖ East Punjab Holdings (Consolidation and Prevention of Fragmentation) Act, 1948\n❖ East Punjab Improved Seeds and date Seedlings Act, 1949\n❖ Abolition of Village Cess (Kuri Kamani) Act, 1950\n❖ Punjab Agricultural Produce Markets (Validation) Act, 1953\n❖ Punjab Livestock Improvement Act, 1953\n❖ Haryana Murrah Buffalo and Other Milch Animal Breed Act, 2002\n❖ Haryana Murrah Buffalo and Other Milch Animal Breed Act, 2001\n❖ Punjab Relief of Indebtedness Act, 1934\n❖ The East Punjab Cotton (Statistics) Act, 1948\n❖ The East Punjab Agricultural Pests, Diseases and Noxious Weeds Act, 1949\n❖ The East Punjab Improved Seeds and Seedlings Act, 1949\n❖ The East Punjab Displaced Persons (Land Resettlement) Act, 1949\n❖ The Punjab New Capital (Periphery) Control Act, 1952\n❖ The Punjab Sugarcane (Regulation of Purchase and Supply) Act, 1953\n❖ The Punjab Agricultural Produce Markets (Validation) Act, 1953\n❖ The Punjab Warehouses Act, 1957\n❖ The Punjab Fruit Nurseries Act, 1961\n❖ The Punjab Agricultural Produce Markets Act, 1961\n❖ The Punjab Land Improvement Schemes Act, 1963\n❖ The Punjab Thur and Sem Lands (Reclamation) Act, 1963\n❖ Punjab Scheduled Roads and Controlled Areas Restriction of Unregulated Development Act, 1963\n❖ The Haryana Agricultural Credit Operations and Miscellaneous Provisions (Banks) Act, 1973\n❖ Haryana Development and Regulation of Urban Areas Act, 1975\n❖ Haryana Co-operative Societies (Amendment) Act, 2009',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Jharkhand',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Jharkhand State Unaided Educational Institution (Grant) Amendment Act, 2007\n❖ Jharkhand Agriculture University (Amendment) Act, 2008\n❖ Jharkhand State Agriculture Produce Market (Amendment) Act, 2007',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Jammu and Kashmir',style: GoogleFonts.zillaSlab(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ The Jammu and Kashmir Land Improvement Schemes Act, 1972.\n❖ The Jammu and Kashmir Livestock Improvement Act, 1996\n❖ Jammu and Kashmir Prohibition on Conversion of Agricultural Land for Non-agricultural Purposes Act, 2010\n❖ Jammu and Kashmir Brick Kilns (Regulation) Act, 2010.',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
                        ),
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
                      shadowColor: Colors.lightGreenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Karnataka',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Karnataka Value Added Tax Act, 2003',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Kerala',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Agricultural Income Tax (Amendment) Act, 2005\n❖ The Kerala Agricultural Workers’ (Amendment) Act, 2003\n❖ Agricultural Debtors (Temporary Relief Act), 2001\n❖ The Kerala Agricultural University (Amendment) Act, 2001\n❖ The Kerala Agricultural University (Amendment) Act,1997\n❖ The Kerala State Co-operative Agricultural and Rural Development Banks (Amendment) Act, 1999\n❖ Kerala Agricultural University (Amendment) Act, 1989\n❖ The Kerala Raw Cashewnuts (Marketing and Transport and Fixation of Minimum Price) Amendment Act, 1988\n❖ Kerala Cashew Workers Relief and Welfare Fund (Amendment) Act, 1987\n❖ Kerala State Co-Operative Agricultural Development Banks (Amendment) Act, 1985\n❖ Kerala State Co-Operative Agricultural And Rural Development Banks Act, 1984\n❖ Kerala Raw Cashewnuts (Procurement and Distribution) Amendment Act, 1983\n❖ Agricultural Income Tax (Amendment) Act, 1983\n❖ Kerala Raw Cashewnuts (Procurement and Distribution) Act,1981\n❖ The Kerala Plantation Tax (Amendment) Act, 1980\n❖ Kerala Agricultural University (Amendment) Act, 1980\n❖ Kerala Agricultural Workers Act, 1974\n❖ Kerala Agricultural University (Amendment) Act, 1974\n❖ Kerala Agricultural University (Amendment) Act, 1973\n❖ The Kerala Agriculturists Debt Relief (Amendment) Act, 1973\n❖ Kerala Plant Diseases and Pests Act, 1972\n❖ Kerala Agricultural University (Amendment) Act, 1972\n❖ Kerala Co-operative Societies (Amendment) Act, 2008\n❖ Kerala Conservation of Paddy Land and Wetland Act, 2008\n❖ Kerala Forest (Vesting and Management of Ecologically Fragile Lands (Amendment) Act, 2009\n❖ Kerala Farmers’ Debt Relief Commission (Amendment) Act, 2008\n❖ Kerala Co-operative Societies (Amendment) Act, 2010\n❖ Kerala Appropriation Act, 2010 – Malayalam\n❖Kerala Agricultural Workers’ (Amendment) Act, 2010',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Maharashtra',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Maharashtra Agricultural Produce Marketing (Regulation) (Amendment) Act, 2005',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Meghalaya',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ The WareHousing Corporations Act, 1962\n❖ Agricultural Produce (Grading and Marking) Act, 1937',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Madhya Pradesh',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Madhya Pradesh Sahakari Krishi aur Gramin Vikas Bank Adhiniyam, 1999\n❖ The Madhya Pradesh Agricultural Cattle Preservation Act, 1959\n❖ Gwalior Vyapar Mela Pradhikaran Adhiniyam, 1996',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Mizoram',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Organic Farming Act, 2004\n❖ Oil Palm (Regulation of Production and Processing) Act, 2004 (External website that opens in a new window)\n❖ Mizoram Oil Palm (Regulation of Production and Processing) Amendment Act, 2007\n❖ The Produce Cess Laws (Abolition) Act, 2006',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Odisha',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Agricultural Produce Markets (Amendment) Act, 2006\n❖ Salient Features of the Odisha Agriculture Produce Markets (Amendment) Act, 2006\n❖ Zilla Parishad Act,1994\n❖ Odisha Agricultural Produce Markets (Amendment) Act, 2006\n❖ The Orissa Preservation of Private Forests Act, 1947\n❖ The Agriculturists’ Loans (Orissa Amendment) Act, 1937\n❖ Orissa Co-operative Land Mortgage Bank Act, 1938\n❖ Odisha Kendu Leaves (Control of Trade) Act, 1961\n❖ Orissa Appropriation (No.3) Act, 1990\n❖ Orissa Debt Relief Act, 1980\n❖ Odisha Sugarcane Cess Act, 1959\n❖ Odisha Revenue Administration (Units) Act, 1963\n❖ Odisha Agricultural Year Act, 1963',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Punjab',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Act Rules By-Laws of Mandi Board\n❖ Punjab Minor Canals Act, 1905\n❖ The Agriculturists Loans Act, 1884\n❖ The Land Improvement Loans Act, 1883\n❖ Punjab Reclamation of Land Act 1959\n❖ East Punjab Holdings (Consolidation and Prevention of Fragmentation) Act 1948.\n❖ Punjab Tenancy Act, 1887',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Puducherry',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Pondicherry Town and Country Planning Act, 1969\n❖ Ground Water (Control and Regulation) Act, 2002',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Rajasthan',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Rajasthan Gaushala Act, 1960\n ❖Rajasthan Live-Stock Improvement Act, 1958\n❖ Rajasthan State Cattle Fairs Act, 1963\n❖ Rajasthan Farmers’ Participation in Management of Irrigation System Act, 2000',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Tamil Nadu',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ Employment Exchange (Compulsory Notification of Vacancies) Act, 1959\n❖ Tamil Nadu Agricultural Labourers Farmers (Social Security and Welfare) Act. , 2006\n❖ Tamil nadu farmers’ management of irrigation systems act, 2000',style: GoogleFonts.zillaSlab(fontSize: 18,)),
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
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text('Tripura',style: GoogleFonts.zillaSlab(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.green[900]),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('❖ The Tripura Agricultural Debtors Relief Act,1975\n❖ Tripura Agricultural Indebtedness Relief Act, 1979\n❖ Tripura Plant diseases and Pests Act, 1969\n❖ The Tripura Cooperative Societies (Second Amendment) Act, 2009\n❖ Tripura Agricultural Produce Markets (Second Amendment) Act, 2007\n❖ Tripura Agricultural Credit Operations Act, 1976',style: GoogleFonts.zillaSlab(fontSize: 18,)),
                            )
                          ],
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
