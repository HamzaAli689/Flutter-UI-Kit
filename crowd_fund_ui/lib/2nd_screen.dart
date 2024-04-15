import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '3rd_screen.dart';


class Second_screen extends StatelessWidget {
  const Second_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Column(
          children: [
            Center(
              child: InkWell(
                onTap: (){
                  Get.to(() => Third_Screen(),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(seconds: 2)
                  );
                },
                child: Container(
                  height: 200,
                  width: 200,
                  child: Text(Get.arguments),
                  color: Colors.amberAccent,
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              Get.back();
            }, child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
