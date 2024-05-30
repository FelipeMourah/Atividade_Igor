import 'package:atividade_igor/pages/04_TelaCadastro.dart';
import 'package:atividade_igor/pages/03_TelaLogin.dart';
import 'package:flutter/material.dart';

class tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container( color: Color(0xff59339b),),
          // Conteúdo da tela
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'TASKHUB',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 18,
                    color:  Color(0xfff5eced),
                  ),
                ),
                SizedBox(height: 150),
                // Botão Cadastrar-se
                GestureDetector(
                  onTap: () {
                    // Navegar para a tela de cadastro
                     Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaCadastro()),);
                  },
                  child: Container(
                     margin: EdgeInsets.only(bottom: 100, top: 80, right:150,),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    decoration: BoxDecoration(
                      color: Color(0xffffffea), // Fundo
                      border: Border.all(color: Colors.grey, width: 2), // Borda
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Cadastrar-se',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black, // Cor do texto
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                // Botão Login
                GestureDetector(
                  onTap: () {
                    // Navegar para a tela de login
                    Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaLogin()),);
                  },
                  child: Container(
                     margin: EdgeInsets.only(bottom: 50,top: 5, left: 200),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    decoration: BoxDecoration(
                      color: Color(0xffffffea), // Fundo transparente
                      border: Border.all(color: Colors.blueGrey, width: 2), // Borda preta
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black, // Cor do texto
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}