

import '02_TelaLogineCadastro.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskHub',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff59339b),
        ),
        body: Align( alignment: Alignment.topCenter, 
          child: Container(
            width: 500,
            height: 900,
            
            decoration: BoxDecoration(
              color: Color(0xff59339b),
              borderRadius: BorderRadius.circular(0),
              
            ),
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'TASKHUB',
                    style: TextStyle(
                      color: Color(0xfff5eced),
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 400
              ),

                ElevatedButton(
                  onPressed: () {
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context) => tela1()),);
                    // Adicione a ação a ser executada quando o botão for pressionado
                  },
                   style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff5eced), // Cor de fundo do botão
                    foregroundColor: Color(0xff350000), // Cor do texto do botão
                    shadowColor: Colors.blueGrey,
                    elevation: 5,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: Color(0xff350000),
                    size: 32,

                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// ignore: camel_case_types
