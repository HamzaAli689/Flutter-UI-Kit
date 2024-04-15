import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '2nd_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Screen"),
        ),
        body: Center(
          child: InkWell(
            onTap: (){
              Get.to(() => Second_screen(),
              transition: Transition.leftToRightWithFade,
                  duration: Duration(seconds: 2),
                  arguments: "This is from main Page"
              );
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
    );
  }
}
