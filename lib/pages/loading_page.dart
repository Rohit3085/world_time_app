
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({Key? key}) : super(key: key);

  @override
  _loadingPageState createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {


  void setupWorldTime() async{
    world_time instance = world_time(location: 'india',flag: 'indianFlag.png',url: 'Asia/Kolkata');
    await instance.getTime();
    Navigator.pushNamed(context, '/home_page',arguments: {
      'location':instance.location,'time':instance.time,
      'flag':instance.flag,
      'isDayTime':instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Center(
      child:SpinKitRotatingCircle(
        color: Colors.white,
        size: 50.0,
      ),
      ),
    );
  }
}
