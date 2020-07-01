import 'package:flutter/material.dart';
import 'package:Weather_App/services/location.dart';
import 'package:http/http.dart' as http;


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {

    super.initState();
    getLocation();
    print('This line of code is triggered');
  }

  void getData()async{
   http.Response  response = await http.get(
       'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02');
if(response.statusCode == 200){
  String data = response.body;
}
else{
  print(response.statusCode);
}
  }


void getLocation() async{
     Location location = Location();
     await location.getCurrentLocation();
}

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(

    );
  }
}
