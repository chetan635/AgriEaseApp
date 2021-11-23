
import 'package:agriease/pages/Calculator.dart';
import 'package:agriease/pages/Crop.dart';
import 'package:agriease/pages/Crop1.dart';
import 'package:agriease/pages/Crop1_Final.dart';
import 'package:agriease/pages/Crop2.dart';
import 'package:agriease/pages/Crop2_Final.dart';
import 'package:agriease/pages/Crop3.dart';
import 'package:agriease/pages/Crop3_Final.dart';
import 'package:agriease/pages/Fertilizer_Final.dart';
import 'package:agriease/pages/Finance.dart';
import 'package:agriease/pages/Loading.dart';
import 'package:agriease/pages/Login.dart';
import 'package:agriease/pages/Mandi.dart';
import 'package:agriease/pages/Mandi_State.dart';
import 'package:agriease/pages/Rain_State.dart';
import 'package:agriease/pages/SignUp.dart';
import 'package:agriease/pages/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:agriease/pages/home.dart';
import 'package:agriease/pages/home_Weather.dart';
import 'package:agriease/pages/home_Weather2.dart';
import 'package:agriease/pages/Rain_District.dart';
import 'package:agriease/pages/Rain_Final.dart';
import 'package:agriease/pages/Laws.dart';
import 'package:agriease/pages/Fertilizer.dart';
import 'package:agriease/pages/Map.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      Provider<Auth_serve>(
        create: (_)=>Auth_serve(FirebaseAuth.instance),
      ),
      StreamProvider(create: (context)=> context.read<Auth_serve>().authStateChanges)
    ],
    child: MaterialApp(
      initialRoute: '/aoth',
      routes: {
        '/home':(context) =>home(),
        '/Rain_State':(context) =>Rain_State(),
        '/Rain_District':(context) =>Rain_District(),
        '/home_Weather':(context)=>home_Weather(),
        '/home_Weather2':(context) =>home_Weather2(),
        '/Rain_Final':(context) =>Rain_Final(),
        '/Laws':(context) =>Laws(),
        '/Crop':(context) =>Crop(),
        '/Mandi_State':(context) =>Mandi_State(),
        '/Mandi':(context) =>Mandi(),
        '/Fertilizer':(context) =>Fertilizer(),
        '/Fertilizer_Final':(context) =>Fertilizer_Final(),
        '/Finance':(context) =>Finance(),
        '/Calculator':(context) =>Calculator(),
        '/Map':(context) =>Map(),
        '/Crop1':(context) =>Crop1(),
        '/Crop2':(context) =>Crop2(),
        '/Crop3':(context) =>Crop3(),
        '/Crop1_Final':(context) =>Crop1_Final(),
        '/Crop2_Final':(context) =>Crop2_Final(),
        '/Crop3_Final':(context) =>Crop3_Final(),
        '/loading':(context) =>Loading1(),
        '/Login':(context) =>Login(),
        '/SignUp':(context) =>SignUp(),
        "/aoth": (context)=>Aoth(),

//'/home':(context)=>home(),



      },
    ),
  ));
}

class Aoth extends StatelessWidget {

  const Aoth({
    Key key,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if(firebaseUser != null){
      return home();
    }

    else{
      return Login();
    }
  }
}

