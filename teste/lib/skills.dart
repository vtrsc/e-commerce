import 'package:flutter/material.dart';
import 'package:teste/ShapeDashboard.dart';
import 'package:teste/widgetCards.dart';
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
class skills extends StatelessWidget {
  const skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ShapeDashboard(),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 18.0),
              width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                 bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
              )
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Technologies',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/flutterLogo.png',
                                      height: 90,
                                    ),
                                    const Text("Flutter"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/dartLogo.png',
                                        height: 80),
                                    const Text("Dart")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/logoJS.png'),
                                    const Text("JavaScript"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const WidgetCards(
                              pathimage: 'gitLogo.jpg',
                              tituloTecnologia: 'Git'),
                          Card(
                            child: InkWell(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/pythonLogo.jpg',
                                        height: 60),
                                    const Text("Python")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/sqlLogo.png',
                                        height: 100),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/linuxLogo.png',
                                      height: 80,
                                    ),
                                    const Text("Linux"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/awsLogo.jpeg',
                                      height: 40,
                                    ),
                                    const Text("AWS Cloud"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/oracleLogo.png',
                                      height: 70,
                                    ),
                                    const Text("oracle cloud"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/kanbanLogo.jpg',
                                      height: 80,
                                    ),
                                    const Text("Kanban"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/htmlLogo.jpeg',
                                        height: 50),
                                    const Text("HTML")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/cssLogo.png',
                                        height: 90),
                                    const Text("CSS")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/swagerAPILogo.png',
                                      height: 60,
                                    ),
                                    const Text("swager API"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/scrumLogo.png',
                                      height: 70,
                                    ),
                                    const Text("Scrum"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              splashColor: Colors.blue,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/kubernetesLogo.png',
                                      height: 60,
                                    ),
                                    const Text("Kubernetes"),
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
