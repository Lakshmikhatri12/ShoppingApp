import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (BuildContext context) {
              return login();
            })));
    return Scaffold(
      drawer: Drawer(),
      //appBar: wd.customAppbar(context),
      // bottomNavigationBar:wd.customBottomNavigation(context),
      body:Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("applogo.jpeg"))
            ),

           ),
           SizedBox(height: 30,),
           CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Color.fromARGB(255, 163, 145, 234)),
            )
            ],
          ),
          
        ),
      )

    );
  }
}