import 'package:flutter/material.dart';
import 'widgets.dart' as wd;
import 'items.dart' as vb;

var totalprice=0;

class shoes extends StatefulWidget {
  const shoes({super.key});

  @override
  State<shoes> createState() => _shoesState();
}

class _shoesState extends State<shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: wd.customAppbar(context),
drawer: wd.customDrawer(context),
bottomNavigationBar: wd.customBottomNavigation(context),
body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
            height: MediaQuery.of(context).size.height*0.35,  
            decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("heels.jpeg"),fit: BoxFit.fill)
            ),  
              ),
              Container(
             height: MediaQuery.of(context).size.height*0.65,  
             child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 5,
             crossAxisSpacing: 5,mainAxisExtent: 250),
            itemCount: vb.shoes.length,
              itemBuilder: (context ,index){
          return InkWell(
           child: Container(
          child: Column(
           children: [
            Container(
              height: 150,
              child: Image.asset(vb.shoes[index]["image"],fit: BoxFit.fill,),
            ),
            Container(
           height: 25,
           child: Text(vb.shoes[index]["name"],style: TextStyle(fontWeight: FontWeight.bold),)
            ),
            Container(
              height: 25,
              child: Text(vb.shoes[index]["price"]),
            ),
            Container(
              color: Color.fromARGB(255, 163, 145, 234),
              height: 30,
              child: TextButton(onPressed: (){
                vb.Cart.add(vb.shoes[index]);
                totalprice=totalprice+int.parse(vb.shoes[index]["price"].toString().replaceRange(0, 3, ""));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Added To Cart")));
              }, child: Text("Add To Cart",style: TextStyle(color: Colors.black),)),
            )
           ],
          ),
           ),
          );
              }),    
              )
            ],
          ),
        ),
      ),
    );
  }
}