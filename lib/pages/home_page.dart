import 'package:finance_app/components/cards/rental_card.dart';
import 'package:finance_app/components/cards/ticker_card.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';

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