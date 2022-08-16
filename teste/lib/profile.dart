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
              "      Profile",
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
    margin: const EdgeInsets.fromLTRB(2, 253, 2, 0),
    child:
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: const [
              Text("Ability to manage IT areas and process services, focusing on application development productivity and business support.\n                                                                                                                                    My mission is to offer tailor-made applications  support services, based on industry-proven technologies and solutions.New technologies and advanced solution options with speed and flexibility. \n                                                                                                                          I have the expertise to provide IT services that are personal and offer fast turnaround. I will support you in your business growth by working with you to implement solutions with the goal to improve your own productivity and increase your productivity with external partners. \n                                                                                                               let's work on creating new systems and running them. In addition, I am also responsible for maintaining the programs, correcting possible errors and ensuring the proper functioning of the software. \n                                                                                              software developer with proven ability in collaboration with large development teams. with internal and external systems.   \n                                                                                                          I was born in São Paulo, but my grandparents are Italian. I studied at Kaplan Language College - Dublin in 2019 and I have great connections with the Irish and European market                                                               \n                                                                                                         Creator of the Archive-Central APP for the Santo André City Hall that facilitates the archiving of processes just by reading the QR-CODE. Saving and changing data in the City Hall database.    \n                                                                                                    Participation in the implementation of Kubernetes infrastructure and development of microservices.                     \n                                                                                                                I created an APP for the collection point using clean architecture that helps control garbage in the city of santo andre, generating savings and sustainability.          \n                                                                                                       \n        Currently: Developer at Santo André City Hall.\n                 Problem and solution researcher. \n                                                                                                                    – Feel free to contact us directly at: vitorsc1998@gmail.com      ",
       style: TextStyle( 
         color:Color.fromARGB(255, 25, 39, 61),
        fontSize: 15.0,
        fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,),
            ],
          ),
        ),
      )
    
  )
 
   ] ));
 }
}