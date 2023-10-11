import 'package:flutter/material.dart';
import 'widgets.dart' as wd;

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: wd.customAppbar(context),
  bottomNavigationBar: wd.customBottomNavigation(context),
  drawer: wd.customDrawer(context),
  body: Column(
    children: [
      Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search,color:Color.fromARGB(255, 163, 145, 234),)),
            labelText: "Search", 
            suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Color.fromARGB(255, 163, 145, 234),))
          )
        
      
        ),
      ),
      ),
    ],
  ),
    );
  }
}