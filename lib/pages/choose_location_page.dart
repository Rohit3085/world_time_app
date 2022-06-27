import 'package:flutter/material.dart';
import 'package:world_time/pages/loading_page.dart';

class chooseLocationPage extends StatefulWidget {
  const chooseLocationPage({Key? key}) : super(key: key);

  @override
  _chooseLocationPageState createState() => _chooseLocationPageState();
}

class _chooseLocationPageState extends State<chooseLocationPage> {

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("buildstate called");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[200],
        title: Text("Choose location",
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      // body: TextButton(onPressed: () {
      //   setState(() {
      //     counter+=1;
      //   });
      // },
      //   child: Text("counter is: $counter"),
      //
      // )
      body: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter a city',
        ),
      ),
    );
  }
}
