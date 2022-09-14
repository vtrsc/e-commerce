import 'package:flutter/material.dart';
import 'package:teste/MyClipper.dart';
import 'package:teste/MyClipper2.dart';
import 'package:teste/ShapeDashboard.dart';
import 'package:teste/dashboard.dart';

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

class work extends StatefulWidget {
  const work({Key? key}) : super(key: key);

  @override
  State<work> createState() => _workState();
}

class _workState extends State<work> {
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
                Color.fromARGB(103, 59, 112, 121).withOpacity(0.8),
                  Color.fromARGB(255,0, 1, 64).withOpacity(0.9)
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
                      width: 55,
                    ),
                    Text(
                      "       Work",
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
                              child: const Icon(Icons.phone_android,
                                  size: 50,
                                  color: Color.fromARGB(255, 78, 135, 226)),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Mobile Developer',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Mobile Application Development with Flutter and Dart',
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
                                Icons.desktop_windows_outlined,
                                size: 50,
                                color: Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Web Developer',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Web sites with  JavaScript , HTML , CSS , Flutter-Web',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 20.0,
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
                                Icons.gpp_good_rounded,
                                size: 50,
                                color: Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Code Tester',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Testing and validating code from other developers',
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
                                Icons.apple_outlined,
                                size: 50,
                                color: Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Apple Hardware',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'maintenance on Iphone, Ipad and operating system support',
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
                                Icons.pets_rounded,
                                size: 50,
                                color: Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Collaborator and Volunteer Amigo Animal -ABC',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Helping homeless animals with food and finding a home',
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
                                Icons.restaurant,
                                size: 40,
                                color: Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Waiter',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        ' Communication ,  team work  ,agility  , patience ' ,
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
                                Icons.emoji_people_rounded,
                                size: 50,
                                color: Color.fromARGB(255, 78, 135, 226),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Dev Conference - Volunteer',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 78, 135, 226),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'stage assistant, lectures: flutter, mentoring and front-end',
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
