import 'package:finance_app/components/button.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const double radii = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              const Text(
                'Bem vindo ao',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Text(
                ' Finance',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[600]),
              ),
              const Text(
                '!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Faça login ou registre-se para aproveitar do melhor ds métodos de ensino',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          const InputWidget(
            placeholder: 'Digite seu email',
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          const InputWidget(
            placeholder: 'Digite sua senha',
          ),
          const Padding(padding: EdgeInsets.all(4.0)),
          const Text('esqueceu a senha?'),
          const Padding(padding: EdgeInsets.all(12.0)),
          ButtonWidget(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            title: 'Entrar',
          ),
          const Text(
            'ou',
            style: TextStyle(fontSize: 16),
          ),
          const ButtonWidget(
            title: 'Cadastrar',
          ),
        ]),
      ),
    );
  }
}
