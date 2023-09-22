import 'package:flutter/material.dart';

class KnowYourself extends StatefulWidget {
  const KnowYourself({super.key});

  @override
  State<KnowYourself> createState() => _KnowYourselfState();
}

class _KnowYourselfState extends State<KnowYourself> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'KNOW YOUR\n    PERIOD',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.purple[100],
                          title: Text("Menstruation:",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          content: SingleChildScrollView(
                            child: Text(
                              '\n\nMenstruation (also known as a period) is the regular discharge of blood and mucosal tissue from the inner lining of the uterus through the vagina.\n\nMenstruation usually begins between ages 12-15, but starting as young as 8 is normal. Menstrual cycles range from 21-45 days in young women and 21-31 days in adults, with an average of 28 days. Bleeding lasts 2-7 days. It stops during pregnancy, does not resume in early breastfeeding, and ends at menopause (typically between 45-55 years).\n\nMenstrual hygiene products include disposable options like pads and tampons, as well as reusable ones like menstrual cups, cloth pads, and period-proof underwear.\n\nMenstrual suppression can occur through hormonal contraception or breastfeeding, with variation in how quickly menstruation returns after childbirth.',
                              style: TextStyle(
                                 
                                  ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Period Knowledge",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.purple[100],
                          title: Text(
                            "Myths & Facts",
                          ),
                          content: SingleChildScrollView(
                            child: Text(
                              'MYTH:\nDuring their periods, girls are impure.\nFACT:\nPeriods are natures way of saying you are growing up.\n\nMYTH:\nGirls having their periods should not cook or visit sacred places.\nFACT:\nThere is nothing impure about periods.\n\nMYTH:\nSanitary products should be kept private and covered in paper when purchasing.\nFACT:\nBuying sanitary products is like buying soap or toothpaste. they are all personal hygiene products\n\nMYTH:\nGirls having their periods should not touch or go near plants.\nThe plant will die if they do so.\nFACT:\nPlants do not discriminate.\n\nMYTH:\nFoods like curd, tamarind and pickles disturb the menstrual flow.\nFACT:\nThe food you eat does not decide the flow of your periods.\n\nMYTH:\nDuring periods they should sleep in a separate shed or a different room.\nFACT:\nperiod is not contagious and causes no harm to anyoneelse in the same room.\n\nMYTH:\nAny form of physical activity can disturb the menstrual flow.\nFACT:\nExercise and playing sports can actually help relieve pain.\n\nMYTH:\nA girl should not talk about her periods in public. If she does so she will be shamed publicly.\nFACT:\nTalking about periods is normal.',
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Myths & Facts",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
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
                            'Foods to eat\n\n1. Water\n2. Fruit\n3. Leafy green vegetables\n4. Ginger\n5. Chicken\n6. Fish\n7. Turmeric\n8. Dark chocolate\n9. Nuts\n10. Flaxseed oil\n12. Lentils and beans\n13. Yogurt\n\n\nFoods to avoid\n\n1.Consuming lots of Salt\n2.Consuming lots of Sugar\n3.Drinking excessive Coffee\n4. Alcohol\n5. Spicy foods\n6. Red meat\n7. Foods you don’t tolerate well',
                        
                          ),
                        );
                      });
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Food",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.purple[100],
                          title: Text("Period Hack"),
                          content: SingleChildScrollView(
                            child: Text(
                              '* To Reduce Period Pain:\n1.Use a heating pad on your lower\n  abdomen or lower back\n2.Take a warm bath\n3.Place a hot water bottle on lower\n abdomen or lower back\n4.Massage your abdomen\n5.Ask your doctor about using an\n over-the-counter pain reliever or anti-\n inflammatory drug\n6.Do an easy exercise like yoga,\n walking, or swimming to help\n increase blood flow\n\n* Track Your Cycle:\nUse a menstrual tracking app or a diary to keep tabs on your menstrual cycle. This can help predict when your period is coming and can be especially useful for planning events and activities.\n\n* Emergency Period Kit:\nCreate a small kit with essentials like pads, pain relievers, wet wipes, and a spare pair of underwear. Keep it in your bag for unexpected situations.\n\n* Stay Comfortable:\nWear comfortable clothing, especially during your period. Loose-fitting, breathable fabrics can help you feel more at ease.\n\n*Stay Clean and Fresh:\nChange your sanitary products regularly to prevent odors and discomfort. Consider using unscented products to avoid irritation.',
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Period Hack",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.purple[100],
                          title: Text("Exercise",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          content: SingleChildScrollView(
                            child: Text(
                              'Best Exercises on Your Period:\n1. Light Cardio:\nTry light cardio like walking.\n2. Low-Volume Strength Training:\nIncorporate low-volume strength exercises.\n3. Yoga and Pilates:\nEngage in relaxing activities like yoga.\n\nExercises to Avoid on Your Period: \n1. sIntense Cardio: Reduce high-intensity cardio.\n2. Skill Training: Avoid precision and skill training during this time',
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      "Exercise",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
