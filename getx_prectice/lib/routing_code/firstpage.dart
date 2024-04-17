import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First_page extends StatelessWidget {
  const First_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("First Page"),),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Get.toNamed("Second");
              }, child: Text("Navigate to Second Page")),
              ElevatedButton(onPressed: (){
                Get.offNamed("/first");
              }, child: Text("Back")),
            ],
          ),
        ),
    );
  }
}
