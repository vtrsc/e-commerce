import 'package:flutter/material.dart';

class WidgetCards extends StatelessWidget {
  const WidgetCards({Key? key, required this.pathimage , required this.tituloTecnologia}) : super(key: key);

  final String pathimage;
  final String tituloTecnologia;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/$pathimage',
                height: 70,
              ),
               Text(tituloTecnologia),
            ],
          ),
        ),
      ),
    );
  
  
}


}
