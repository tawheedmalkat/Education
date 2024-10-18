import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Helpers/Consts/routs.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: RoutPage.SplashScreen,
      getPages: RoutPage.routes,
    )

    ;
  }
}

