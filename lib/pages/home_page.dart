

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Map data_from_loading_screen = {};
  @override
  Widget build(BuildContext context) {
    data_from_loading_screen = ModalRoute.of(context)!.settings.arguments as Map;
    print(data_from_loading_screen);
    String bgIamge = data_from_loading_screen['isDayTime']? 'day.png' : 'night.png';
    Color? bgcolor = data_from_loading_screen['isDayTime']? Colors.blue : Colors.indigo[170];
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgIamge'),
                fit: BoxFit.cover,
              )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: <Widget>[
                  TextButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context, '/chooseLocation');
                    },
                      icon: Icon(Icons.edit_location,
                      color: Colors.black,),
                    label: Text("Choose location",
                    style: TextStyle(
                      color: Colors.black,
                    ),),

                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(data_from_loading_screen['location'],
                      style: TextStyle(
                        fontSize: 40.0,

                      )),
                    ],
                  ),
                  Text(data_from_loading_screen['time'],
                  style: TextStyle(
                    fontSize: 40.0,
                  ),),
                ],
              ),
            ),
          ),

      ),

    );
  }
}
