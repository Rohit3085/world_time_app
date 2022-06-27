import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class world_time{
  String? location; // location time
  String? time; // time at that location
  String? flag;// url for flag icon
  String? url;// location url for api endpoint
  bool? isDayTime; // is it day or night(for background image in home page)

  world_time({this.location, this.flag, this.url, this.isDayTime});

  Future <void> getTime() async{
    try{
      // making a request for data from worldTime site
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //get properties from data
      String datetime = data['datetime'];
      String utc_offset = data['utc_offset'].substring(1,3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(utc_offset),minutes: 30));
      //print(now);
      // set the time property
      isDayTime = now.hour > 6 && now.hour<20 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print("some error occurred");
      time = "No data received";
    }


  }
}
