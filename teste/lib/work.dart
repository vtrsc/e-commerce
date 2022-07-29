import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/MyClipper2.dart';
import 'package:teste/dashboard.dart';
import 'package:teste/profile.dart';
import 'package:teste/skillsMelhor.dart';

class work extends StatefulWidget {
  const work({Key? key}) : super(key: key);

  @override
  State<work> createState() => _workState();
}

class _workState extends State<work> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

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
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(5, 10, 25, 0),
                      height: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_back_ios),
                                color: Colors.white,
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
                                "      Work",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ])))
        ],
      ),
    );
  }
}
