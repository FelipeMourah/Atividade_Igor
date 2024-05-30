// ignore: file_names
import 'package:atividade_igor/pages/05_TelaEsquecisenha.dart';
import 'package:atividade_igor/pages/06_TelaTask.dart';
import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    // Lógica de login
    String email = _emailController.text;
    String password = _passwordController.text;

    // Aqui você pode adicionar a lógica de autenticação
    print('Email: $email');
    print('Password: $password');
    Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaTask()),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff59339b),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TASKHUB',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Arial',
                  letterSpacing: 18,
                  color: Color(0xffffffea),
                ),
              ),
              SizedBox(height: 120),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 18.0),
                decoration: BoxDecoration(
                  color: Color(0xffe9efef),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 8,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Nome de usuário ou Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 2),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaEsqueciSenha()),);
                          // Lógica para recuperar senha
                        },
                        child: Text(
                          'Esqueci minha senha',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _login,
                      child: Text('ENTRAR'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white, // Cor do texto do botão
                        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 20),
                        IconButton(
                          icon: Icon(Icons.account_circle, size: 40), // Substituir com ícone do Google
                          onPressed: () {
                            // Lógica para login com Google
                          },
                        ),
                      ],
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
