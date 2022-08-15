import 'package:flutter/material.dart';
import 'package:teste/MyClipper.dart';
import 'package:teste/MyClipper2.dart';
import 'package:teste/ShapeDashboard.dart';
import 'package:teste/dashboard.dart';

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: (Column(children: [
      ClipPath(
        clipper: ShapeDashboard(),
        child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
                Color.fromARGB(255, 15, 133, 232).withOpacity(0.9)
              ],
            )),
            child: Column(
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
                    SizedBox(
                      width: 54,
                    ),
                    Text(
                      "   Education",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
      Column(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.blue,
                    elevation: 14.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: const Icon(
                                Icons.auto_stories_rounded,
                                size: 40,
                                color:Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Kaplan languages - Dublin',
                                    style: TextStyle(
                                      color:Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        ' • conversation  • grammar  • reading',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ])))),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.blue,
                    elevation: 14.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: const Icon(
                                Icons.filter_drama_rounded,
                                size: 50,
                               color:Color.fromARGB(255, 78, 135, 226)
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Oracle University',
                                    style: TextStyle(
                                      color:Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        '• Oracle Cloud Infrastructure 2021 Architect',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ])))),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.blue,
                    elevation: 14.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: const Icon(
                                Icons.build_rounded ,
                                size: 50,
                                 color:Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    ' Escola SENAI "A. Jacob Lafer"',
                                    style: TextStyle(
                                       color:Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        '• Mechanical tecnology  • Mechanical Lathe Operations\n • technical drawing',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ])))),
                        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.blue,
                    elevation: 14.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: const Icon(
                                Icons.memory_rounded,
                                size: 50,
                                color:Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Tecnoponta',
                                    style: TextStyle(
                                      color:Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        '• Hardware (iPhone ,iPad) • iPhone Support \n • iPad Suppor',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ])))),
       
                        
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.blue,
                    elevation: 14.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: const Icon(
                                Icons.account_balance_rounded,
                                size: 40,
                                 color:Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'technologist',
                                    style: TextStyle(
                                       color:Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        '• Information Technology Management',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ])))),
                         Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.blue,
                    elevation: 14.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: const Icon(
                                Icons.app_shortcut_rounded,
                                size: 50,
                                 color:Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Digital Marketing Professional Certificate',
                                    style: TextStyle(
                                      color:Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        '• Social Media Marketing  • User Experience and Usability',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ])))),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(
                child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Colors.blue,
                    elevation: 14.0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            width: 50.0,
                            height: 100.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(24.0),
                              child: const Icon(
                                Icons.code,
                                size: 50,
                                 color:Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'DevMedia',
                                    style: TextStyle(
                                     color:Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'certificate: • Python  • Git • Dart • MVC • Flutter • HTML • CSS',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ])))),
      ])
    ]))));
  }
}
