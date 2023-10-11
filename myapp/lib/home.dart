import 'package:flutter/material.dart';
import 'makeup.dart';
import 'top.dart';
import 'shoes.dart';
import 'bag.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets.dart' as wd;


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: wd.customDrawer(context),
      bottomNavigationBar: wd.customBottomNavigation(context),
      appBar: wd.customAppbar(context),
      body:  SingleChildScrollView(
        child: Container(
          //color: Color.fromARGB(255, 179, 100, 222),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.38,
                color: Color.fromARGB(255, 163, 145, 234),
                child: Column(
                  children: [
                   Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.38,
                child: Row(
                children: [
                Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("girl.png"),fit: BoxFit.fill)
                ),
                
                    ),
                    Container(
                width: MediaQuery.of(context).size.width*0.2,
                height: MediaQuery.of(context).size.height*0.38,
                child: Text(" shop\n till\n you\n drop",style: GoogleFonts.babylonica(fontWeight: FontWeight.bold,fontSize: 40),),
                
                    )
                      ],
                    ),
                   )
                  ],
                ),
            //     decoration: BoxDecoration(
            //   image: DecorationImage(image: AssetImage("photo1.jpeg"),fit: BoxFit.fill)
            // ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height*0.55, 
             //  color: Colors.blue,
                 child: ListView(
                  children: [
                    Container(
                    height: 255,
                     child: Row(
                      children: [
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>top()));
                        },
                          child: Column(
                            children: [
                              Container(
                              width: MediaQuery.of(context).size.width*0.44,
                              height: 200,
                              decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("denim.jpg"),fit: BoxFit.fill)
                        ),
                        ),
                        Container(
                       width: MediaQuery.of(context).size.width*0.44,
                       height: 30,
                       color: Color.fromARGB(255, 163, 145, 234),
                       child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>top()));
                       },child: Text("Top",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),),
                        )
                            ],
                          ),
                        ),
                        ),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                       child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>makeup()));
                        },
                         child: Column(
                           children: [
                             Container(
                              width: MediaQuery.of(context).size.width*0.44,
                               height: 200,
                               decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("MAKEUP.jpeg"),fit: BoxFit.fill)
                              ),
                              ),
                              Container(
                       width: MediaQuery.of(context).size.width*0.44,
                       height: 30,
                       color: Color.fromARGB(255, 163, 145, 234),
                       child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>makeup()));
                       },child: Text("Makeup",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),),
                        )
                           ],
                         ),
                       ),
                     ),
                     
                      ],
                        ),
                       ),
                Container(
                 height: 250,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>shoes()));
                          },
                          child: Column(
                            children: [
                              Container(
                         width: MediaQuery.of(context).size.width*0.44,      
                        height: 200,
                        decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("heel2.jpeg"),fit: BoxFit.fill)
                        ),
                      ),
                      Container(
                       width: MediaQuery.of(context).size.width*0.44,
                       height: 30,
                       color: Color.fromARGB(255, 163, 145, 234),
                       child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>shoes()));
                       },child: Text("Footwear",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),),
                        )
                            ],
                          ),
                     ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>bag()));
                    },
                    child: Column(
                      children: [
                        Container(
                         width: MediaQuery.of(context).size.width*0.44, 
                         height: 200,
                      decoration: BoxDecoration(
                           image: DecorationImage(image: AssetImage("bag2.jpeg"),fit: BoxFit.fill)
                        ),
                        ),
                        Container(
                       width: MediaQuery.of(context).size.width*0.44,
                       height: 30,
                       color: Color.fromARGB(255, 163, 145, 234),
                       child: TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bag()));
                       },child: Text("Bag",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),),
                        )
                      ],
                    ),
                  ),
                ),
                    ],
                  ),
                ),
                  ],
                 )
                        
                        
                        //  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                        //  mainAxisExtent: 200,crossAxisSpacing: 5,mainAxisSpacing: 5
                        //  ),
                         
                        //  shrinkWrap: true,
                        //  itemCount: vb.items.length,
                        //   itemBuilder:  (context, index) {
                        //    return InkWell(
                        //      onTap: () {
                               
                        //      },
                        //      child: Padding(
                        //        padding: const EdgeInsets.all(10.0),
                        //        child: Container(
                        //          color: Color.fromARGB(255, 249, 155, 179),
                        //        child: Image.asset(vb.items[index]["image"],fit: BoxFit.fill,),
                        //        ),
                                         
                        //      ),
                        //    );
                        //   })
        
                          )
            ],
          ),
          ),
      ),
      
        );
  } 
}