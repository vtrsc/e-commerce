import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste/dashboard.dart';
import 'package:teste/widgetCards.dart';
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
class skillsMehor extends StatefulWidget {
  const skillsMehor({Key? key}) : super(key: key);

  @override
  State<skillsMehor> createState() => _skillsMehorState();
}

class _skillsMehorState extends State<skillsMehor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
            Color.fromARGB(255, 15, 133, 232).withOpacity(0.9)
          ],
          
        )),
        
        child: Column(
          children: [
            Container(
            margin: EdgeInsets.fromLTRB(5, 10, 25, 0),
               
              
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                           
                               

                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      IconButton(
                        
                        icon: const Icon(Icons.arrow_back_ios),
                        color: Colors.white,
                        onPressed: (){
                          Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyDashboard()));
                        },
                      ),
                     
                    SizedBox(width: 55,),
                      Text("technologies",
                      
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
             Expanded(child: Container(
             
             
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                 
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 19,),
              
                 
                            Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          //example clean code
                         const WidgetCards(pathimage: 'flutterLogo.png', 
                         tituloTecnologia: 'Flutter',
                         ),

                        const WidgetCards(pathimage: 'dartLogo.png',
                         tituloTecnologia: 'Dart'),

                        const WidgetCards(pathimage: 'logoJS.png',
                         tituloTecnologia: 'JavaScript'),

                        const WidgetCards( pathimage: 'gitLogo.jpg',
                              tituloTecnologia: 'Git'),
                              
                        const WidgetCards(
                          pathimage: 'pythonLogo.jpg',
                           tituloTecnologia: 'Python'),
                           //example clean code
                          
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
                                        height: 90),
                                         const Text("SQL"),
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
                          const WidgetCards(pathimage: 'oracleLogo.png',
                           tituloTecnologia: 'Oracle Cloud'),
                         const WidgetCards(pathimage: 'kanbanLogo.jpg',
                          tituloTecnologia: 'Kanban'),
                          
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
                  ))
              ),],
              ),
             )),
          ],
        ),
      ),
      
    );
  }
}
