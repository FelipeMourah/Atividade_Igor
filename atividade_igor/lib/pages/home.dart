
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
        ),
        body: Align( alignment: Alignment.topCenter, 
          child: Container(
            width: 500,
            height: 700,
            
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(10),
              
            ),
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'TASKHUB',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
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
                    // Adicione a ação a ser executada quando o botão for pressionado
                  },
                   style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 55, 53, 57), // Cor de fundo do botão
                    foregroundColor: Colors.white, // Cor do texto do botão
                    shadowColor: Colors.black,
                    elevation: 10,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
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
