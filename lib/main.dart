import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_navigation/views/Login.dart';
import 'firebase_options.dart';
import 'package:flutter_navigation/views/homepage.dart';
import 'package:flutter_navigation/views/sign_up.dart';
import 'package:flutter_navigation/views/DetailsScreen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:flutter_navigation/views/Main_Category.dart';
import 'package:flutter_navigation/views/New_Home.dart';
import 'package:flutter_navigation/features/splashview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splashview(),
    );
  }
}
