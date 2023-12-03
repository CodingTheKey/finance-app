import 'package:finance_app/components/button.dart';
import 'package:finance_app/components/cards/rentalCard.dart';
import 'package:finance_app/components/cards/tickerCard.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              seedColor: Colors.black, background: Colors.black87),
          fontFamily: GoogleFonts.poppins().fontFamily,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white)),
          useMaterial3: true,
        ),
        home: const SafeArea(child: LoginPage()),
        routes: {
          '/home': (context) => const SafeArea(child: HomePage()),
          '/info'
        });
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
          SizedBox(
            height: 10,
          ),
          Text(
            'Faça login ou registre-se para aproveitar do melhor ds métodos de ensino',
            style: TextStyle(color: Colors.grey[600]),
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
          const Text(
            'ou',
            style: TextStyle(fontSize: 16),
          ),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Criptos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 25,
          ),
          const InputWidget(placeholder: 'search'),
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text('Ver Todos'),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext ctxt, int i) {
                return Column(children: [
                  TickerCardWidget(
                    title: 'Ethereum',
                    price: 3245.03,
                    variation: -10.23,
                    symbol: 'ETH',
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ]);
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Minha Carteira',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RentalCardWidget(title: 'Valorização', variation: 60),
              SizedBox(
                height: 20,
              ),
              RentalCardWidget(title: 'Valorização', variation: 74),
              SizedBox(
                height: 20,
              ),
              RentalCardWidget(title: 'Valorização', variation: 32),
            ],
          )
        ]),
      ),
    );
  }
}

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
      ),
    );
  }
}
