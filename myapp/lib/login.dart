import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool? Check1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      
      drawer: Drawer(),

      body:
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("background1.jpeg"),
                )
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.15,
                    child: const Text("Welcome",style: TextStyle(fontSize: 40),),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                      child: TextField(
                      decoration:  InputDecoration(
                       border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                     ),
                      
                      labelText: "Email"
                      ),
                      ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                      child: TextField(
                      decoration:  InputDecoration(
                       border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                     ),
                      labelText: "Password"
                      ),
                      ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                    Checkbox(value: Check1, onChanged: (bool? value){
                          setState(() {
                            Check1 = value;
                          });
                        }),
                        Text("remember me",style: TextStyle(fontSize: 17),),
                        SizedBox(width: 20,),
                        TextButton(onPressed: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home() )
                      );
                    }, child: Text("LOGIN",style: TextStyle(color: Colors.black,fontSize: 20,backgroundColor: Color.fromARGB(255, 163, 145, 234)),),)
                        
                      ],
                    ),
                  ),
                  
                  Container(
                    width: 200,
                    height: 30,
                   child: Center(child: Text("OR")),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          child: ListTile(
                            leading: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.google)),
                            title: Text("Continue with Google",style: TextStyle(fontSize: 15),),
                            
                          ),
                        )
                      ],
                    ),
                  )
                ]
                        ),
      ),
        )
      );
  }
}