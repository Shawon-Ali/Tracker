import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:tracker/pages/calender.dart';
import 'package:tracker/pages/know_yourself.dart';
import 'package:tracker/pages/reminder.dart';
import 'package:tracker/pages/setting.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  final user = FirebaseAuth.instance.currentUser!;
  final _pageController = PageController();

// sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.deepPurple,
            child: PopupMenuButton(
              icon: Icon(Icons.person),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                    value: 0,
                    child: Column(
                      children: [
                        CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.deepPurple,
                            child: Icon(Icons.person)),
                        Text('' + user.email!),
                        TextButton.icon(
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                            },
                            icon: Icon(Icons.logout),
                            label: Text('logout'))
                      ],
                    )),
              ],
              onSelected: (item) => {print(item)},
            ),
          ),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          CalendarPage(),
          KnowYourself(),
          Reminder(),
          Setting(),
        ],
      ),
      drawer: CurvedDrawer(
        color:Color.fromARGB(255, 204, 162, 235),
        buttonBackgroundColor: Colors.deepPurple,
        labelColor:Colors.white ,
        backgroundColor: Colors.transparent,
        
        width: 75.0,
        items: const <DrawerItem>[
          DrawerItem(
            icon: Icon(Icons.event),
          ),

           DrawerItem(
            icon: Icon(Icons.monitor_heart_sharp),
          ),
          DrawerItem(
            icon: Icon(Icons.notifications),
          ),
         
           DrawerItem(
            icon: Icon(Icons.contact_emergency),
          ),
     //Optional Label Text
        ],
        onTap: (index) {
          print('Button Pressed');

          _pageController.animateToPage(index,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut);
        },
      ),
    );
  }
}
