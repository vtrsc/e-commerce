import 'package:flutter/material.dart';
import 'package:teste/MyClipper.dart';
import 'package:teste/MyClipper2.dart';
import 'package:teste/ShapeDashboard.dart';
import 'package:teste/dashboard.dart';

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

class projects2 extends StatefulWidget {
  const projects2({Key? key}) : super(key: key);

  @override
  State<projects2> createState() => _projects2State();
}

class _projects2State extends State<projects2> {
  bool _customTileExpanded = false;

  static const String _title = 'Projects';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          
            child: (
              Column(
                children: [
                        ClipPath(
            clipper: ShapeDashboard(),
            child: Container(
              
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: <Color>[  Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
            Color.fromARGB(255, 15, 133, 232).withOpacity(0.9)],
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
                    "     Projects",
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
      Column(
        children: <Widget>[
          ExpansionTile(
            title: const Text('Kubernets',
            style: TextStyle( fontWeight: FontWeight.bold,
                      )),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: Image.asset(
                      'assets/kubernetsar.png',
                    ),
                  ),
                  title: Text(
                      'Participation implementation of Kubernetes infrastructure and development of microservices.',
                      style: TextStyle( fontWeight: FontWeight.bold,
                      )
                      ),
                      ),
            ],
          ),
          ExpansionTile(
            title: const Text('Arquivo-Central',
            style: TextStyle( fontWeight: FontWeight.bold,)
            ),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: Image.asset(
                      'assets/appCentral.jpg',
                    ),
                  ),
                  title: Text(
                      "APP Arquivo-Central I built a mobile  and   desktop  application that  for the City of  Santo Andre  facilitates the archiving of processes with just reading the  QR-CODE . Saving and  changing the data in the  City Hall's database.",
                       style: TextStyle( fontWeight: FontWeight.bold,))),
            ],
          ),
          ExpansionTile(
            title: const Text('Chat-Bot',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/chatBot.jpeg',
                  ),
                ),
                title: Text(
                    "ChatBot   I created a simple Python chatbot for a clothing store. The chatbot has basic question-answering skills,",
                     style: TextStyle( fontWeight: FontWeight.bold,)),
              ),
            ],
          ),

          ExpansionTile(
            title: const Text('APP- Estaçao de Coleta',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/appEC.jpg',
                  ),
                ),
                title: Text(
                    "I created the collection station APP that helps in the control of residences from all over the city of santo andre",
                     style: TextStyle( fontWeight: FontWeight.bold,)),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Web Site',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/pousada.png',
                    height: 50,
                  ),
                ),
                title:
                    Text("I created a WebSite with HTML , CSS and JavaScript ",
                     style: TextStyle( fontWeight: FontWeight.bold,)),
              ),
            ],
          ),

          ExpansionTile(
            title: const Text('Portifolio' ,
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/portifolio.jpg',
                  ),
                ),
                title:
                    Text("My Portifolio with Dart And Flutter",
                     style: TextStyle( fontWeight: FontWeight.bold,)),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Clima Tempo',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/climaTempo.PNG',
                  ),
                ),
                title:
                    Text("weather weather consuming an external API",
                     style: TextStyle( fontWeight: FontWeight.bold,)),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Conversor de moeda',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/conversorDeMoeda.jpg',
                  ),
                ),
                title: Text(
                    "I created a currency \n converter  app for \n student purposes",
                     style: TextStyle( fontWeight: FontWeight.bold,)
                    ),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Chess Game',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/xadrez.png',
                  ),
                ),
                title: Text(
                    "eu criei um um clone do jogo de xadrez",
                     style: TextStyle( fontWeight: FontWeight.bold,)),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Calculadora',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/calculadora.jpeg',
                  ),
                ),
                title: Text(
                    "I created a Calculator with JavaScript for study purposes ",
                     style: TextStyle( fontWeight: FontWeight.bold,)),
              ),
            ],
          ),
          ExpansionTile(
            title: const Text('Mario Game',
             style: TextStyle( fontWeight: FontWeight.bold,)),
            trailing: const Icon(Icons.folder_rounded),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                  constraints: BoxConstraints(),
                  child: Image.asset(
                    'assets/marioGame.jpg',
                  ),
                ),
                title:
                    Text("I created a mario game for study purposes",),
              ),
            ],
          ),
        ],
      )
    ]))));
  }
}
