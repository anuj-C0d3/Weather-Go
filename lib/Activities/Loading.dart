import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Data/Weatherdata.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {

  void setData() async{
    Weatherdata w1 = Weatherdata(location: "Bhopal");
    await w1.getData();
    String? temp = w1.temp;
    String? wind = w1.WindSpeed;
    String? main = w1.main;
print(temp);
print(wind);
Future.delayed(Duration(seconds: 3),(){
  Navigator.pushReplacementNamed(context, '/home',arguments:{
    "temp" : temp,
    "wind" : wind,
    "main" : main
  } );
});

  }
  @override
  void initState() {
    setData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 20,
                color: Colors.blueGrey,
                child: Image.asset(

                  width: 140,
                height: 140
                ,"drawables/weathericon.png"),
              ),
              SizedBox(height: 20,),
              Text("Weather go",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 35,),)
             ,SizedBox(height: 40,),
          SpinKitWaveSpinner(
            trackColor: Colors.transparent,
                waveColor: Colors.lightBlueAccent.shade200,
                size: 60,duration: const Duration(seconds: 1), color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
