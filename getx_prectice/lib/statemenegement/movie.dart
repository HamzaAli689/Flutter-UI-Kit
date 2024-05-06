import 'package:get/get.dart';

/// make class observable by making indiviuals variables observable

// class Movie{
//  var name = "wanted".obs;
//  var ticket = 200.obs;
// }

/// want to make entire class observable

class Movie{
  String? name;
  int? ticket;
  Movie({
    required this.name,required this.ticket
 });
 }