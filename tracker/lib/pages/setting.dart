import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: 
                   
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "Expert\nConsultation",
                    style: TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,color: Colors.white,),
                  ),
                ),
               
               
             
              
            ),

              SizedBox(
                  height: 70,
                ),
          
                Expanded(
                  flex: 9,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(62)),
                        
                    ),
                    padding: EdgeInsets.symmetric(horizontal:27,vertical: 35),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                    
                         Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.white
                            ),
                            child:
                             ListTile(
                              contentPadding: EdgeInsets.all(20),
                              tileColor:  Colors.deepPurple[100] ,
                              title:Text("Prof. Dr. Khaleda Akhter (MBBS, MCPS, FCPS, Gynecologist)") ,
                              subtitle: Text("Appointment: +8801823039800 Address: Ibn Sina Specialized Hospital"),
                              leading:Image.asset("images/doc1.png",fit: BoxFit.cover,height: 100),
                               ),
                          ),
                       
                       SizedBox(height:20,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.white
                            ),
                            child:
                             ListTile(
                              contentPadding: EdgeInsets.all(20),
                              tileColor:  Colors.white ,
                              title:Text("Prof. Dr. Khaleda Akhter (MBBS, MCPS, FCPS, Gynecologist)") ,
                              subtitle: Text("Appointment: +8801823039800 Address: Ibn Sina Specialized Hospital"),
                              leading:Image.asset("images/doc1.png",fit: BoxFit.cover,height: 100),
                               ),
                          ),
                    
                          SizedBox(height: 20,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.white
                            ),
                            child:
                             ListTile(
                              contentPadding: EdgeInsets.all(20),
                              tileColor:  Colors.white ,
                              title:Text("Prof. Dr. Khaleda Akhter (MBBS, MCPS, FCPS, Gynecologist)") ,
                              subtitle: Text("Appointment: +8801823039800 Address: Ibn Sina Specialized Hospital"),
                              leading:Image.asset("images/doc1.png",fit: BoxFit.cover,height: 100),
                               ),
                          ),
                       
                                               SizedBox(height: 20,),

                        ],
                      ),
                    ),
                  ),
                )
          ],
        ),
      ),
    );
  }
}
