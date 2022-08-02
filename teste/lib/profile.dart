import 'package:flutter/material.dart';
import 'package:teste/dashboard.dart';
import 'package:teste/ShapeDashboard.dart';


class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ShapeDashboard(),
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: <Color>[ 
                   Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
            Color.fromARGB(255, 15, 133, 232).withOpacity(0.9)],
              )),
            ),
          ),
 



  
  

  Container(
        margin: EdgeInsets.fromLTRB(5, 50, 25, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyDashboard()));
              },
            ),
            SizedBox(
              width: 55,
            ),
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.9)
                      ],

                      //add more color here.
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
            )
          ],
        ),
      ),


  
  Container(
    margin: EdgeInsets.fromLTRB(2, 150, 2, 0),
    child:
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text("I believe that technology can help us with today's problems, look to the future and improve the quality of life with products and services.\n Ability to manage IT areas and process services, focusing on application development productivity and business support.\n  my mission is to offer tailor-made infrastructure support services, based on industry-proven technologies and solutions.New technologies and advanced solution options with speed and flexibility. \n I have the expertise to provide IT services that are personal and offer fast turnaround. I will support you in your business growth by working with you to implement solutions with the goal to improve your own productivity and increase your productivity with external partners. job as a mobile app developer is to make everyday tasks easier. Without a doubt, this is a career that will only get bigger and more important in the future.",
       style: TextStyle( fontWeight: FontWeight.bold,),
              textAlign: TextAlign.start,),
            ],
          ),
        ),
      )
    
  )
 
   ] ));
 }
}