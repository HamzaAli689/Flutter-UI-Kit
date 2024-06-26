import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_controller.dart';

void main() {
  runApp(HomeView());
}

class HomeView extends StatelessWidget {
var mycontroller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("OBX Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${mycontroller.count} ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    mycontroller.incrementcounnter();
                  },
                  child: Text("Change"))
            ],
          ),
        ),
      ),
    );
  }
}
