import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:teste/MyClipper.dart';
import 'package:teste/MyClipper2.dart';
import 'package:teste/dashboard.dart';
import 'package:teste/profile.dart';
import 'package:teste/skillsMelhor.dart';

class projects extends StatefulWidget {
  const projects({Key? key}) : super(key: key);

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

            
        
        children: [
          ClipPath(
            clipper: MyClipper2(),
            child: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
            Color.fromARGB(255, 15, 133, 232).withOpacity(0.9)
          ],
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
              "Projects",
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


          SafeArea(

          
            child: Padding(
              
              padding: const EdgeInsets.only(top: 90.0),
              child: Column(
            
                children: [
                 
                 
                  const SizedBox(height: 100),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: GridView.count(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          Card(
                          child: Row(
                          children: [
                            Image.asset('assets/appCentral.jpg',
                            height: 500,
                            ),
                             Text("APP Arquivo-Central  \n I built a mobile \n and   desktop \n application that \n for the City of \n Santo Andre  facilitates \n the archiving of \n processes with \n just reading the \n QR-CODE . Saving and \n changing the data in the  \n City Hall's database."),
                          ],
                          ),
                          
                          ),
                          Card(
                          child: Row(
                          children: [
                            Image.asset('assets/chatBot.jpeg',
                            height: 150,

                            ),
                            Text("ChatBot  \n I created a simple Python \n chatbot for a clothing store. \n The chatbot has basic \n question-answering skills,"),
                          ],
                          ),
                          
                          ),
                          Card(
                          child: Row(
                          children: [
                            Image.asset('assets/appEC.jpg',
                            height: 500,
                            ),
                           Text("APP Estaçao De Coleta"),
                           
                          ],
                          ),
                          
                          ),

                          Card(
                          child: Row(
                          children: [
                            Image.asset('assets/conversorDeMoeda.jpg',
                            height: 350,
                            ),
                           Text("Conversor De Moeda \n I created a currency \n converter  app for \n student purposes only"),
                          ],
                          ),
                          
                          ),
                          Card(
                          child: Row(
                          children: [
                            Image.asset('assets/marioGame.jpg',
                            height: 500,
                            ),
                           Text("Mario Game I created a \n  mario game for study \n   purposes only"),
                          ],
                          ),
                          
                          ),
                       
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
   );
  }
}