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
       
        body: SingleChildScrollView(
          
            child: Column(
              
              children: [

                
                 Container(
              
                  width: 999,
                  height: 850,
                        decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 17 ,24 ,39),
                  Color.fromARGB(255, 17 ,24 ,39)
                ],
              )),
         

         
        
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
                  
                  children:[

      Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Row(
               
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Color.fromARGB(255, 255, 255, 255),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyDashboard()));
                    },
                  ),
                  SizedBox( width: 55),
                  Text(
                    "  Midia Social",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ],
          ),
                
                SizedBox(height: 40,),    

                 TextButton.icon(
              icon: Image.asset('assets/linkedin.png',
               height: 60,
              ),
               label: Text(" Linkedin", 
               style: TextStyle(
                color: Color.fromARGB(173, 255, 255, 255),
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
               height: 95,
              ),
               label: Text("GitHub", 
               style: TextStyle(
               color: Color.fromARGB(173, 255, 255, 255),
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
               label: Text(" Instagram", 
               style: TextStyle(
             color: Color.fromARGB(173, 255, 255, 255),
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
               label: Text(" Twitter", 
               style: TextStyle(
           color: Color.fromARGB(173, 255, 255, 255),
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
               label: Text(" Spotify", 
               style: TextStyle(
                color: Color.fromARGB(173, 255, 255, 255),
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
              ],
            ),
    
          )
        );
        
      

  }
}