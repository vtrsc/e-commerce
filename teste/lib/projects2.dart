import 'package:flutter/material.dart';

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
    
  }
}

class projects2 extends StatefulWidget {
  projects2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _projects2State createState() => _projects2State();
}

class _projects2State extends State<projects2> {
  // selected's value = 0. For default first item is open.
  int selected = 0; //attention

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ExpansionTile Collapse',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            ListView.builder(
              key: Key('builder ${selected.toString()}'), //attention
              padding: EdgeInsets.only(left: 13.0, right: 13.0, bottom: 25.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(children: <Widget>[
                  Divider(
                    height: 17.0,
                    color: Colors.white,
                  ),
                  ExpansionTile(
                    key: Key(index.toString()), //attention
                    initiallyExpanded: index == selected, //attention

                    leading: Icon(
                      Icons.folder_rounded,
                      size: 50.0,
                      color: Color.fromARGB(255, 0, 95, 178),
                    ),
                    title: Text('Arquivo-Central',
                        style: TextStyle(
                            color: Color(0xFF09216B),
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      '',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        
                          child: Row(
                          children: [
                            Image.asset('assets/appCentral.jpg',
                            height: 300,
                            ),
                             Text("APP Arquivo-Central  \n I built a mobile \n and   desktop \n application that \n for the City of \n Santo Andre  facilitates \n the archiving of \n processes with \n just reading the \n QR-CODE . Saving and \n changing the data in the  \n City Hall's database."),
                          ],
                          ),
                      )
                    ],
                    onExpansionChanged: ((newState) {
                      if (newState)
                        setState(() {
                          Duration(seconds: 20000);
                          selected = index;
                        });
                      else
                        setState(() {
                          selected = -1;
                        });
                    }),
                  ),
                ]);
              },
            )
          ]),
        ),
      ),
    );
  }
}