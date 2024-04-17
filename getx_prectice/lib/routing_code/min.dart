import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prectice/routing_code/secondpage.dart';
import 'package:getx_prectice/routing_code/thirdpage.dart';
import 'package:getx_prectice/routing_code/unknowpage.dart';

import 'firstpage.dart';

 // void main() {
 // runApp(const MyApp());
 // }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "first",
      defaultTransition: Transition.rightToLeft,
      getPages: [
        GetPage(name: "/first", page: () => First_page()),
        GetPage(name: "/Second", page: () => Second_page()),
        GetPage(name: "/Third", page: () => Third_Page()),
      ],
      unknownRoute: GetPage(name: "/unknown", page: () => Unknow_Page()),
    );
  }
}


