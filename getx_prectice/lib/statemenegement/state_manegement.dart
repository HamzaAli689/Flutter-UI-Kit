import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'movie.dart';

class MyApp extends StatelessWidget {
  var movie = Movie(name: 'Wanted', ticket: 100).obs;
  // var count = 0.obs;
  // final count = Rx<int>0;2
  // final count = RxInt(0);

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
                  "${movie.value.name}",
                  // "${movie.name}",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    // movie.name.value = "Hamza";
                    movie.value.name = "Hamza Ali";
                    movie.refresh();
                    print(movie.value.name);

                  },
                  child: Text("Change"))
            ],
          ),
        ),
      ),
    );
  }
}
