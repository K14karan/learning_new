import 'package:demo/intro.dart';
import 'package:demo/login_mobile.dart';
import 'package:demo/privacy_policy.dart';
import 'package:demo/slider.dart';
import 'package:demo/term_condition.dart';
import 'package:demo/utils/image_page.dart';
import 'package:demo/utils/provider/login_google.dart';
import 'package:demo/vertical_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:demo/utils/view/registration_page_screen.dart';
import 'package:provider/provider.dart';
import 'ImageEdit.dart';
import 'about_us.dart';
import 'color_change.dart';
import 'counter_discount.dart';
import 'login.dart';
void main() async {
  try{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: const FirebaseOptions(
        apiKey: "AIzaSyDTeC4mavzuwSrmH3l0ext-gHpDyHU_VZ4",
        appId: '1:256132864092:android:3dce2d9b333acabaf7ae99',
        messagingSenderId: '256132864092',
        projectId: 'fir-f5f3e'),
    );
  }catch(e){}
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
        home:   ColorChane(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

