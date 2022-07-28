import 'package:flutter/material.dart';

// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
class projects2 extends StatelessWidget {
  const projects2({Key? key}) : super(key: key);

  static const String _title = 'Projects';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      
        ExpansionTile(
          title: const Text('Kubernests'),
         
           trailing: const Icon(
            
                 Icons.folder_rounded
             
          ),
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            
            ListTile(
            leading: 
             ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 300,
    minHeight: 300,
    maxWidth: 400,
    maxHeight: 400,
  ),
  child: Image.asset('assets/kubernetsar.png', ),
),

            
            
   
      
    
            ),
              
      
          ],
        ),
      ],
    );
  }
}
