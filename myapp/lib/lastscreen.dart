import 'package:flutter/material.dart';
import 'widgets.dart' as wd;

class lastscreen extends StatefulWidget {
  const lastscreen({super.key});

  @override
  State<lastscreen> createState() => _lastscreenState();
}

class _lastscreenState extends State<lastscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wd.customAppbar(context),
      body: Center(
        child: Container(
          child: Text("ThankYou",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,backgroundColor: Color.fromARGB(255, 163, 145, 234),),),
        ),
      ),

    );
  }
}