import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:untitled/Data/Weatherdata.dart';
class Homeactivity extends StatefulWidget {
  const Homeactivity({super.key});

  @override
  State<Homeactivity> createState() => _HomeactivityState();
}

class _HomeactivityState extends State<Homeactivity> {

  @override
  void setState(VoidCallback fn) {

    super.setState(fn);
  }
  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map info = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Temperature: "+info["temp"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("Weather: "+info["main"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("Wind spee: "+info["wind"],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

            ],
          ),
        ),
      ),
    );
  }
}
