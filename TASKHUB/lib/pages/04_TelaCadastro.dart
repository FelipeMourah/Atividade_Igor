import 'package:atividade_igor/pages/06_TelaTask.dart';
import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _agreedToTerms = false;

  void _register() {
    // Lógica de cadastro
    String username = _usernameController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
    Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaTask()),);

    if (password != confirmPassword) {
      // Mostrar erro de senha não coincidente
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('As senhas não coincidem')),
      );
      return;
    }

    if ( _agreedToTerms) {
      // Continue com a lógica de cadastro
      print('Username: $username');
      print('Password: $password');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Você deve concordar com a política e os termos')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff59339b),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30.0),
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
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                decoration: BoxDecoration(
                  color: Color(0xffe9efef),
                  borderRadius: BorderRadius.circular(10.0),
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
                      'Cadastro',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 5,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Nome do Usuário',
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
                    SizedBox(height: 20),
                    TextField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        labelText: 'Confirmar Senha',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    CheckboxListTile(
                      title: Text('Eu li e concordo com os Termos de Serviço e a Política de Privacidade', style: TextStyle(fontSize: 12),),
                      value: _agreedToTerms,
                      onChanged: (bool? value) {
                        setState(() {
                          _agreedToTerms = value ?? false;
                        });
                      },
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: _register,
                      child: Text('CRIAR CONTA'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color.fromARGB(255, 35, 0, 0), backgroundColor: Color.fromARGB(255, 255, 255, 255), // Cor do texto do botão
                        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                        textStyle: TextStyle(
                          fontSize: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
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
