// import 'package:flutter/material.dart';

// class Reminder extends StatefulWidget {
//   final DateTime selectedDate; // Receive selected date from CalendarPage

//   Reminder({required this.selectedDate});

//   @override
//   State<Reminder> createState() => _ReminderState(selectedDate: selectedDate);
// }

// class _ReminderState extends State<Reminder> {
//   final DateTime selectedDate;

//   _ReminderState({required this.selectedDate});

//   int _calculateDaysLeft() {
//     DateTime today = DateTime.now();
//     int daysLeft = selectedDate.difference(today).inDays;
//     return daysLeft;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Expanded(
//               child: Column(
//                 children: [
//                   Text(
//                     'REMINDER',
//                     style: TextStyle(
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   CircleAvatar(
//                     radius: 130,
//                     backgroundColor: Colors.deepPurple,
//                     child: Text(
//                       'PERIOD IN $_calculateDaysLeft DAYS',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             // Rest of your code...
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {
  const Reminder({super.key});

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Column(
              children: [
//circular reminder
                Text(
                  'REMINDER',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      ),
                ),
                SizedBox(height: 15,),
                CircleAvatar(
                  radius: 130,
                  backgroundColor:Colors.deepPurple,
                  child: Text(
                    'PERIOD IN A  COUPLE OF DAYS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
//food instruction
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.purple[100],
                            title: Text(
                              "FOOD",
                            ),
                            content: Text(
                              'Eat fresh vegetables, fruits and proteins. To know more about foods go to “know yourself”.',
                            ),
                          );
                        });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      'Food',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white, fontSize: 20),
                    )),
                    decoration: BoxDecoration(
                        color:Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),

//water instruction
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                           backgroundColor: Colors.purple[100],
                            title: Text(
                              "Water",

                            ),
                            content: Text(
                              'Drink plenty of water. It will help reduce dehydration headaches and bloating.',

                            ),
                          );
                        });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      'Drink Water',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 20),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
//exercise instruction
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.purple[100],
                            title: Text(
                              "Exercise",
                              style: TextStyle(
                                   fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            content: Text(
                              'Do some exercise like light walking or other light cardio, Yoga and Pilates',
                       
                            ),
                          );
                        });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      'Exercise',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white, fontSize: 20),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),

//rest instruction
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                           backgroundColor: Colors.purple[100],
                            title: Text(
                              "CHANGE YOUR NAPKINS",)
                           ,
                            content: Text(
                              'Change your napkins in every 6 hours and use hygienic napkins.',
                         
                            ),
                          );
                        });
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Center(
                        child: Text(
                      'Change Your \nNapkins',
                      style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                    )
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
