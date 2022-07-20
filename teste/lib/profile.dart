import 'package:flutter/material.dart';
import 'package:teste/dashboard.dart';
import 'package:teste/ShapeDashboard.dart';


class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
            ),
          ),
 



  
  

  Container(
        margin: EdgeInsets.fromLTRB(5, 50, 25, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyDashboard()));
              },
            ),
            SizedBox(
              width: 55,
            ),
            Text(
              "Profile",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.9)
                      ],

                      //add more color here.
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
            )
          ],
        ),
      ),


  
  Container(
    margin: EdgeInsets.fromLTRB(2, 150, 2, 0),
    child:
      SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text("Quero te ver de novo, poder te abraçar forte e fazer cara de quem tá nem aí contigo e fingir que nem lembrava de ti até te encontrar. Quero um encontro casual e trocar umas palavras impensadas, quem sabe relembrar aqueles momentos nossos, quem sabe te arrancar aquele sorriso que acho lindo. Quero saborear teu beijo, com desejo… Aquele mesmo que tive ao te ver me esperando na esquina da rua; e aquele frio no estômago que sentia de te ver tão perto e não poder tocar teu rosto. Quero reviver aquele dia no ônibus, em meio àquela sensação de impotência quando não arrisquei te beijar enquanto meu ponto se aproximava mas que você o fez, e ainda com esse jeitinho bobo e sarcástico, riu da situação e me fez ganhar meu dia. Quero você, te quero em meus braços. Quero passar uma tarde em um lugar qualquer perto de casa, te beijar na frente daqueles bobos que ainda se espantam com nossa paixão lésbica. Quero te ouvir me chamar de pequena e me irritar contigo enquanto tira meu cigarro da boca, joga no chão e amassa com o pé. Quero que pegue na minha mão na hora de voltar e diga que eu devia ter ficado mais tempo. Quero ver tua mensagem no dia seguinte dizendo que adorou me ver e quer de novo. Quero ouvir essa tua voz boba, tuas risadas debochadas e sorrir igual uma otária. Quero novamente despertar teu interesse em mim e fazer dos nossos encontros inesquecíveis. E por fim, quero parar de escrever esses textos de saudade e me inspirar numa realidade. Quero te ver de novo, poder te abraçar forte e fazer cara de quem tá nem aí contigo e fingir que nem lembrava de ti até te encontrar. Quero um encontro casual e trocar umas palavras impensadas, quem sabe relembrar aqueles momentos nossos, quem sabe te arrancar aquele sorriso que acho lindo. Quero saborear teu beijo, com desejo… Aquele mesmo que tive ao te ver me esperando na esquina da rua; e aquele frio no estômago que sentia de te ver tão perto e não poder tocar teu rosto. Quero reviver aquele dia no ônibus, em meio àquela sensação de impotência quando não arrisquei te beijar enquanto meu ponto se aproximava mas que você o fez, e ainda com esse jeitinho bobo e sarcástico, riu da situação e me fez ganhar meu dia. Quero você, te quero em meus braços. Quero passar uma tarde em um lugar qualquer perto de casa, te beijar na frente daqueles bobos que ainda se espantam com nossa paixão lésbica. Quero te ouvir me chamar de pequena e me irritar contigo enquanto tira meu cigarro da boca, joga no chão e amassa com o pé. Quero que pegue na minha mão na hora de voltar e diga que eu devia ter ficado mais tempo. Quero ver tua mensagem no dia seguinte dizendo que adorou me ver e quer de novo. Quero ouvir essa tua voz boba, tuas risadas debochadas e sorrir igual uma otária. Quero novamente despertar teu interesse em mim e fazer dos nossos encontros inesquecíveis. E por fim, quero parar de escrever esses textos de saudade e me inspirar numa realidade. Quero te ver de novo, poder te abraçar forte e fazer cara de quem tá nem aí contigo e fingir que nem lembrava de ti até te encontrar. Quero um encontro casual e trocar umas palavras impensadas, quem sabe relembrar aqueles momentos nossos, quem sabe te arrancar aquele sorriso que acho lindo. Quero saborear teu beijo, com desejo… Aquele mesmo que tive ao te ver me esperando na esquina da rua; e aquele frio no estômago que sentia de te ver tão perto e não poder tocar teu rosto. Quero reviver aquele dia no ônibus, em meio àquela sensação de impotência quando não arrisquei te beijar enquanto meu ponto se aproximava mas que você o fez, e ainda com esse jeitinho bobo e sarcástico, riu da situação e me fez ganhar meu dia. Quero você, te quero em meus braços. Quero passar uma tarde em um lugar qualquer perto de casa, te beijar na frente daqueles bobos que ainda se espantam com nossa paixão lésbica. Quero te ouvir me chamar de pequena e me irritar contigo enquanto tira meu cigarro da boca, joga no chão e amassa com o pé. Quero que pegue na minha mão na hora de voltar e diga que eu devia ter ficado mais tempo. Quero ver tua mensagem no dia seguinte dizendo que adorou me ver e quer de novo. Quero ouvir essa tua voz boba, tuas risadas debochadas e sorrir igual uma otária. Quero novamente despertar teu interesse em mim e fazer dos nossos encontros inesquecíveis. E por fim, quero parar de escrever esses textos de saudade e me inspirar numa realidade. "),
            ],
          ),
        ),
      )
    
  )
 
   ] ));
 }
}
      