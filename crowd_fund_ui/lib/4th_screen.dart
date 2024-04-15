import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Fourth_screen extends StatelessWidget {
  const Fourth_screen({super.key});

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
                  //Get.offAll(Fourth_screen());
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.indigo,
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
