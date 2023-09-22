import 'package:flutter/material.dart';
import 'package:tracker/pages/auth_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder:(context) => AuthPage()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:50.0,vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.deepPurple,
                      
                       child: CircleAvatar(
                                            radius: 60,
                        backgroundColor: Colors.black,
                         child: Icon(
                          Icons.water_drop_sharp,
                          size: 110,
                                       ),
                       ),
                     ),
        
              Text("WOMEN'S HEALTH AWARENESS",style: TextStyle(color:Colors.purple[100],fontSize: 20),),
              Text('WELCOME',style: TextStyle(color:Colors.purple[100],fontSize: 40),),
              
              Text('Welcome to the app, where you can track your period and get some essential information to be healthy during menstruation',style: TextStyle(color:Colors.purple[100],fontSize: 20),),
            SizedBox(height: 50,)
            
            ],
          ),
        ),
      ),
    );
  }
}