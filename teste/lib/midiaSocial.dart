import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste/ClippedPartsWidget.dart';
import 'package:teste/dashboard.dart';

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
class midiaSocial extends StatefulWidget {
  const midiaSocial({Key? key}) : super(key: key);

  @override
  State<midiaSocial> createState() => _midiaSocialState();
}

class _midiaSocialState extends State<midiaSocial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
      ClippedPartsWidget(
        top: Container(
          color: Colors.white,
        ),
        bottom: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
              Color.fromARGB(255, 15, 133, 232).withOpacity(0.9)
            ],
          )),
        ),
        splitFunction: (Size size, double x) {
          // normalizing x to make it exactly one wave
          final normalizedX = x / size.width * 2 * pi;
          final waveHeight = size.height / 30;
          final y = size.height / 2 - sin(normalizedX) * waveHeight;

          return y;
        },
      ),
      Container(
        
        margin: EdgeInsets.fromLTRB(5, 50, 25, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Color.fromARGB(255, 0, 0, 0),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyDashboard()));
              },
            ),
            SizedBox(
              width: 55,
            ),
            Text(
              "Midia Social",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
                        Color.fromARGB(255, 15, 133, 232).withOpacity(0.9)
                      ],

                      //add more color here.
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
            )
          ],
        ),
      ),
      Container(
        
         margin: EdgeInsets.all(40),
        
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: (
                Column(

                  
                  children:[

                    
          TextButton.icon(
              
           
              icon: Image.asset('assets/face.png',
              height: 60,
        
              ),
                 label: Text("Faceboock",
                  style: TextStyle(
                   color: Color.fromARGB(174, 0, 0, 0),
                    fontSize: 20,
                  ),
                ),
              style: ElevatedButton.styleFrom(
                
                fixedSize: Size(300, 100)
              ),
              
              onPressed: () {},
               
              
              ),
                 TextButton.icon(
              icon: Image.asset('assets/twitter.png',
               height: 60,
              ),
               label: Text("Twitter", 
               style: TextStyle(
           color: Color.fromARGB(174, 0, 0, 0),
                    fontSize: 20,
                  ),
               ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100)
              ),
              onPressed: () {},
               
              
              ),
               TextButton.icon(
              icon: Image.asset('assets/gitHub.png',
               height: 60,
              ),
               label: Text("GitHub", 
               style: TextStyle(
               color: Color.fromARGB(174, 0, 0, 0),
                    fontSize: 20,
                  ),
               ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100)
              ),
              onPressed: () {},
               
              
              ),
            
       
              TextButton.icon(
              icon: Image.asset('assets/insta.png',
               height: 60,
              ),
               label: Text("Instagram", 
               style: TextStyle(
             color: Color.fromARGB(174, 0, 0, 0),
                    fontSize: 20,
                  ),
               ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100)
              ),
              onPressed: () {},
               
              
              ),
            TextButton.icon(
              icon: Image.asset('assets/spotify.png',
               height: 60,
              ),
               label: Text("Spotify", 
               style: TextStyle(
                color: Color.fromARGB(174, 0, 0, 0),
                    fontSize: 20,
                  ),
               ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100)
              ),
              onPressed: () {},
               
              
              ),
             TextButton.icon(
              icon: Image.asset('assets/linkedin.png',
               height: 60,
              ),
               label: Text("Linkedin", 
               style: TextStyle(
                color: Color.fromARGB(174, 0, 0, 0),
                    fontSize: 20,
                  ),
               ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 100)
              ),
              onPressed: () {},
               
              
              ),
          
          ],
              )),
      )
    ]
          )
        )
        ]
        ));

  }
}
