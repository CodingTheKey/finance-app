import 'package:finance_app/components/button.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black, background: Colors.grey[900]),
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white)),
          useMaterial3: true,
        ),
        home: const SafeArea(child: LoginPage()),
        routes: {'/home': (context) => const SafeArea(child: HomePage())});
  }
}

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
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text(
                ' Finance',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[600]),
              ),
              const Text(
                '!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Text(
            'Faça login ou registre-se para aproveitar do melhor ds métodos de ensino',
            style: TextStyle(color: Colors.grey),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          InputWidget(
            placeholder: 'Digite seu email',
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          InputWidget(
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
          const Text('ou'),
          ButtonWidget(
            title: 'Cadastrar',
          ),
        ]),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const double radii = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            'Ativos',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          InputWidget(placeholder: 'search')
        ]),
      ),
    );
  }
}
