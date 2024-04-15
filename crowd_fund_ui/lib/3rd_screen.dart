import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '4th_screen.dart';


class Third_Screen extends StatelessWidget {
  const Third_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Third Screen"),
        ),
        body: Center(
          child: InkWell(
            onTap: (){
              Get.offAll( Fourth_screen(),
                  transition: Transition.rightToLeftWithFade,
                  duration: Duration(seconds: 2)
              );
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
