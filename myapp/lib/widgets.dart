import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/bag.dart';
import 'package:myapp/cart.dart' ;
import 'package:myapp/home.dart';
import 'package:myapp/makeup.dart';
import 'package:myapp/search.dart';
import 'package:myapp/shoes.dart';
import 'package:myapp/top.dart';
import 'package:badges/badges.dart' as badges;

PreferredSizeWidget customAppbar(BuildContext context){
  return AppBar(

        actions: [
          SizedBox(width: 20,),
        Center(
          child: badges.Badge(
            badgeContent: Text('0',style: TextStyle(color: Colors.white),),
            animationDuration: Duration(milliseconds: 300),
            child: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
          }, icon: FaIcon(FontAwesomeIcons.bagShopping)),
          ),
        ),
          ],
      backgroundColor:  Color.fromARGB(255, 163, 145, 234),
      title: Text("Shopaholic"),
      centerTitle: true,
      );
}
Widget customDrawer(BuildContext context){
  return Drawer(
    child: ListView(
      children: [
       Container(
        height: 50,
        color: Color.fromARGB(255, 163, 145, 234),
        child: Text("Shopaholic",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
       ),
         Card(
          elevation: 20,
           child: ListTile(
                leading: TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>bag()));
                }, child: Text("Bag",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 163, 145, 234)),)),
                
           ),
         ),
          Card(
            elevation: 10,
            child: ListTile(
                
                  leading: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>top()));
                  }, child: Text("Top",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 163, 145, 234)),))
                   ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
                  leading: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>shoes()));
                  }, child: Text("Shoes",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 163, 145, 234)),))
                   ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
          
                  leading: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>makeup()));
                  }, child: Text("MakeUp",style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(255, 163, 145, 234)),))
                   ),
          ),
          
         
      ],
    ),
  );
}
  Widget customBottomNavigation(BuildContext context){
    return  BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.home,color: Colors.black),onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
        },),
      label: "Home",     
        ),
        BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.search,color: Colors.black),onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
        },),
      label: "search",     
        ),
        BottomNavigationBarItem(icon: IconButton(icon: FaIcon(FontAwesomeIcons.cartShopping,color: Colors.black,),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
        },),
      label: "Cart",     
        )
    ]
        );
  }
