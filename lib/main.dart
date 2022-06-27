
import 'package:flutter/material.dart';
import 'package:world_time/pages/home_page.dart';
import 'package:world_time/pages/loading_page.dart';
import 'package:world_time/pages/choose_location_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => loadingPage(),
      '/home_page' : (context) => homepage(),
      '/chooseLocation' : (context) => chooseLocationPage(),
    },
  ));
}


