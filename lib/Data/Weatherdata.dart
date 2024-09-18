import 'package:http/http.dart';
import 'dart:convert';
class Weatherdata{
  late String location;
  late String WindSpeed;
  late String Description;
  late String main;
  late String humidity;
  late String temp;
  Weatherdata({required this.location}){
    location = this.location;
  }
  Future<void> getData() async{
    Response res = await get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&"));
    Map data = jsonDecode(res.body);
    Map getWind_data= data['wind'];
    String getWindSpeed = getWind_data['speed'].toString();

    List weather_list = data['weather'];
    Map weatherData = weather_list[0];
    String getDesc = weatherData['description'];
    String getMain = weatherData['main'];

    Map main_data = data['main'];
    String getHumidity = main_data['humidity'].toString();
    double getTemp = main_data['temp'];
    getTemp = getTemp-273.0;
    String stemp = getTemp.toString();
    main = getMain;
    WindSpeed = getWindSpeed;
    Description = getDesc;
    humidity = getHumidity;
    temp = stemp+"deg";
  }

}
