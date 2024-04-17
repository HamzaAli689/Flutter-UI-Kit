import 'package:flutter/material.dart';

class Unknow_Page extends StatelessWidget {
  const Unknow_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Unknown Page"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Navigate to Second Page")),
              ElevatedButton(onPressed: (){}, child: Text("Back")),
            ],
          ),
        ),
      ),
    );
  }
}
