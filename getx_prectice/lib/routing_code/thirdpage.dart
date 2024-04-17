import 'package:flutter/material.dart';

class Third_Page extends StatelessWidget {
  const Third_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Third Page",
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.indigo,
              ),
              ElevatedButton(onPressed: (){}, child: Text("Back")),
            ],
          ),
        ),
    );
  }
}
