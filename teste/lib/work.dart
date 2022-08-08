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
  bool _customTileExpanded = false;

  static const String _title = 'Projects';

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
                              child: const Icon(
                                Icons.bug_report,
                                size: 50,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Penetration Testing',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Melalukan Penetration Testing pada situs \nweb & mobile apps',
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
                                Icons.phone_android,
                                size: 50,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Penetration Testing',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Melalukan Penetration Testing pada situs \nweb & mobile apps',
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
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Penetration Testing',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Melalukan Penetration Testing pada situs \nweb & mobile apps',
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
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Penetration Testing',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Melalukan Penetration Testing pada situs \nweb & mobile apps',
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
                                Icons.accessibility_rounded,
                                size: 50,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Penetration Testing',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Melalukan Penetration Testing pada situs \nweb & mobile apps',
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
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const Text(
                                    'Penetration Testing',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Melalukan Penetration Testing pada situs \nweb & mobile apps',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ]))))
      ])
    ]))));
  }
}
