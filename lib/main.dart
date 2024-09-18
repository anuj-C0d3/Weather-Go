import 'package:flutter/material.dart';
import 'package:untitled/Activities/HomeActivity.dart';
import 'package:untitled/Activities/Loading.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context)=>const Loading(),
      "/home":(context)=>const Homeactivity()
    },
  ));
}


