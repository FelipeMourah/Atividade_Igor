import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class tela1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskHub',
      home: Scaffold(
        appBar: AppBar(
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "TASKHUB",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 18,
                    ),
                  ),
                ),
              ),
              //--------------------------------
              //        CONTAINER LOGIN
              //--------------------------------
              Container(
                width: 200,
                height: 100,
                padding: EdgeInsets.all(25),
                margin: EdgeInsets.only(bottom: 16, top: 180, right: 175),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Lógica de login
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              ),
              //--------------------------------
              Container(
                width: 200,
                height: 100,
                padding: EdgeInsets.all(25),
                 margin: EdgeInsets.only(bottom: 100, top: 50, left: 175),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    // ignore: prefer_const_constructors
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Lógica de cadastro
                      },
                      child: const Text('Cadastrar'),
                    
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(tela1());
