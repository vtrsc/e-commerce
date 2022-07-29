import 'dart:ui' as ui;
import 'package:flutter/material.dart';
// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
class education extends StatefulWidget {
  @override
  _educationState createState() => _educationState();
}
class PlaceInfo {
  final String name;
  final String category;
  final String location;
  
  final Color startColor;
  final Color endColor;

  PlaceInfo(this.name, this.startColor, this.endColor, 
      this.location, this.category);
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
class _educationState extends State<education> {
  
  final double _borderRadius = 24;

  var items = [
    PlaceInfo('   Kaplan languages',ui.Color.fromARGB(255, 0, 20, 73).withOpacity(0.8), ui.Color.fromARGB(255, 57, 82, 150).withOpacity(0.9),
        'Irland - Dublin', '  \n• conversation \n • grammar  \n • reading', ),
        PlaceInfo('  Oracle University',ui.Color.fromARGB(255, 1, 38, 119).withOpacity(0.8), ui.Color.fromARGB(255, 57, 82, 150).withOpacity(0.9),
        'Online', '• Oracle Cloud Infrastructure 2021 Architect'),
    PlaceInfo('   Senai  \n• Mechanical tecnology\n • Mechanical Lathe Operations\n • technical drawing', ui.Color.fromARGB(255, 0, 91, 197), ui.Color.fromARGB(255, 57, 82, 150), 'Sao Paulo - Santo André',
        '' , ),
         
    PlaceInfo('   Tecnoponta', ui.Color.fromARGB(255, 0, 180, 252), ui.Color.fromARGB(255, 57, 82, 150), 
        'Sao Paulo', '• Hardware (iPhone ,iPad)\n • iPhone Support\n • iPad Support '),
    PlaceInfo(' technologist ',   ui.Color.fromARGB(255, 23, 249, 255), ui.Color.fromARGB(255, 57, 82, 150), 
        'Sao Paulo - Sao Caetano', '• Information Technology Management'),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),

        backgroundColor: 
              
                
                  Color.fromARGB(255, 15, 23, 173).withOpacity(0.8),
                 
                
              ),
      
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(colors: [
                        items[index].startColor,
                        items[index].endColor
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: items[index].endColor,
                          blurRadius: 12,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: CustomPaint(
                      size: Size(100, 150),
                      painter: CustomCardShapePainter(_borderRadius,
                          items[index].startColor, items[index].endColor),
                    ),
                  ),
                  Positioned.fill(
                    child: Row(
                      children: <Widget>[
                     
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                items[index].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'bold',
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                items[index].category,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'bold',
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Flexible(
                                    child: Text(
                                      items[index].location,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Avenir',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

