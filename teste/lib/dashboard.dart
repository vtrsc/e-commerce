import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:teste/MyClipper.dart';
import 'package:teste/education.dart';
import 'package:teste/midiaSocial.dart';
import 'package:teste/profile.dart';
import 'package:teste/ShapeDashboard.dart';
import 'package:teste/projects.dart';
import 'package:teste/projects2.dart';

import 'package:teste/skillsMelhor.dart';
import 'package:teste/work.dart';

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
class MyDashboard extends StatelessWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 295,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(103, 59, 112, 121).withOpacity(0.8),
                  Color.fromARGB(255,0, 1, 64).withOpacity(0.9)
                ],
              )),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Vitor Cicote ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Developer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/photo.jpg'),
              ),
            ],
          )),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                children: [
                  const SizedBox(height: 160),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => profile()),
                              ),
                              splashColor: Color.fromARGB(255, 103, 154, 235),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.person,
                                        size: 70, color:Color.fromARGB(255,0, 1, 64)),
                                    Text("Profile",
                                     style: TextStyle( fontWeight: FontWeight.bold,)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const work()),
                              ),
                              splashColor:  Color.fromARGB(255, 20, 105, 244),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.work,
                                      size: 70,
                                      color:Color.fromARGB(255,0, 1, 64)
                                    ),
                                    Text("Work",
                                     style: TextStyle( fontWeight: FontWeight.bold,)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => education()),
                              ),
                              splashColor:  Color.fromARGB(255, 20, 105, 244),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.school_rounded,
                                      size: 70,
                                     color   :     Color.fromARGB(103, 77, 174, 189)
                                    ),
                                    Text("Education",
                                     style: TextStyle( fontWeight: FontWeight.bold,)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const skillsMehor()),
                              ),
                              splashColor:  Color.fromARGB(255, 20, 105, 244),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.engineering,
                                      size: 70,
                                      color:Color.fromARGB(255,0, 1, 64),
                                    ),
                                    Text("Skills",
                                     style: TextStyle( fontWeight: FontWeight.bold,)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const midiaSocial()),
                              ),
                               splashColor:  Color.fromARGB(255,  255 ,230, 0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.favorite,
                                      size: 70,color: Color.fromARGB(255,0, 1, 64),),
                                    Text("Midia Social",
                                     style: TextStyle( fontWeight: FontWeight.bold,)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => projects2()),
                              ),
                               splashColor:  Color.fromARGB(255, 20, 105, 244),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.folder_rounded,
                                      size: 70,
                                     color: Color.fromARGB(255, 78, 135, 226),
                                    ),
                                    Text("Project",
                                     style: TextStyle( fontWeight: FontWeight.bold,)),
                                  ],
                                ),
                              ),
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
