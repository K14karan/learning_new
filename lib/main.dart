
import 'package:demo/utils/provider/login_google.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'animation_login/animation_login.dart';
import 'animation_login/navigation_page.dart';
import 'bike9pro/bike_list.dart';
import 'instagram/instagram_profile.dart';


void main() async {
  try{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: const FirebaseOptions(
        apiKey: "AIzaSyDTeC4mavzuwSrmH3l0ext-gHpDyHU_VZ4",
        appId: '1:256132864092:android:3dce2d9b333acabaf7ae99',
        messagingSenderId: '256132864092',
        projectId: 'fir-f5f3e'),
    );
  }catch(e){

  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>GoogleSign(),
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  const BikeList(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

