import 'package:flutter/material.dart';
import 'package:myapp/lastscreen.dart';
import 'package:myapp/makeup.dart';
import 'widgets.dart' as wd;
import 'items.dart' as vb;

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();

}

class _CartState extends State<Cart> {
    int cartItemsNO = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wd.customAppbar(context),
      drawer: wd.customDrawer(context),
      bottomNavigationBar: wd.customBottomNavigation(context),
    body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.1,
                //color: Color.fromARGB(248, 212, 87, 212),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Your Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.6,
            child: ListView.builder(
              itemCount: vb.Cart.length,
              itemBuilder:  (context, index) {
          return ListTile(
           leading: Image.asset(vb.Cart[index]["image"]),
           title: Text(vb.Cart[index]["name"],style: TextStyle(fontWeight: FontWeight.bold),),
           subtitle: Text(vb.Cart[index]["price"]),
           trailing: IconButton(onPressed: (){
            totalprice=totalprice-int.parse(vb.Cart[index]["price"].toString().replaceRange(0, 3, ""));
            setState(() {
              vb.Cart.removeAt(index);
            });
           }, icon: Icon(Icons.delete),
           ),
          );
            }),
          ),
          Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.2,
          // color: Colors.amber,
          child: Column(
            children: [
              Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.height*0.05,
                     child: Text("Total: "+totalprice.toString()),
                        ),
                        Container(
                    width: MediaQuery.of(context).size.width/2,     
                    height: MediaQuery.of(context).size.height*0.05,
                    color: Color.fromARGB(255, 163, 145, 234),
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>lastscreen()));
                    },child: Text("Confirm Order",style: TextStyle(color: Colors.black),),),
                        )
                      ],
                    ),
               
                ),
              
            ],
          ),
          
          )
        ],
      ),
    ),  
    );
  }

  
  }