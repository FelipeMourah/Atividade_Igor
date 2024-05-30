import 'package:atividade_igor/pages/03_TelaLogin.dart';
import 'package:flutter/material.dart';

class TelaEsqueciSenha extends StatefulWidget {
  @override
  _TelaEsqueciSenhaState createState() => _TelaEsqueciSenhaState();
}

class _TelaEsqueciSenhaState extends State<TelaEsqueciSenha> {
  final _emailController = TextEditingController();
  final _newPasswordController = TextEditingController();

  void _resetPassword() {
    // Lógica de resetar senha
    String email = _emailController.text;
    String newPassword = _newPasswordController.text;

    // Aqui você pode adicionar a lógica de resetar senha
    print('Email: $email');
    print('New Password: $newPassword');
     Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaLogin()),);
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
                  color:  Color(0xfff5eced),
                ),
              ),
              SizedBox(height: 140),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xffe9efef),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Esqueci a Senha',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(height: 40),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: _newPasswordController,
                      decoration: InputDecoration(
                        labelText: 'Nova Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 60),
                    ElevatedButton(
                      onPressed: _resetPassword,
                      child: Text('REDEFINIR SENHA'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.grey.shade300, // Cor do texto do botão
                        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
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
