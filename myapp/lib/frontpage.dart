import 'package:flutter/material.dart';
// import 'package:myapp/home.dart';
//import 'widgets.dart' as wd;

class frontpage extends StatefulWidget {
  const frontpage({super.key});

  @override
  State<frontpage> createState() => _frontpageState();
}

class _frontpageState extends State<frontpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   appBar: wd.customAppbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("girl2.jpeg"))
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Love",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
             Container(
                child: Text("Yourself",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
             Container(
                child: Text("Better",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Container(child: TextButton(onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
              },child: Text("Go Shopping"),),)
            ],
          ),
        ),
      ),
    );
  }
}