import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second_page extends StatelessWidget {
  const Second_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Second Page"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Get.offAllNamed("/Third");
              }, child: Text("Navigate to Third Page")),
              ElevatedButton(onPressed: (){
                Get.back();
              }, child: Text("Back")),
            ],
          ),
        ),
    );
  }
}
