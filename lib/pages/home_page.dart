import 'dart:math';

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
                    price: Random().nextInt(2) > 0
                        ? Random().nextDouble() * 5000
                        : Random().nextDouble() / 1000,
                    variation: Random().nextInt(2) > 0
                        ? Random().nextDouble() * 123
                        : -Random().nextDouble() * 123,
                    symbol: 'ETH',
                    onPressed: () {
                      Navigator.pushNamed(context, '/info');
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
              RentalCardWidget(
                title: 'Valorização',
                variation: 60,
              ),
              SizedBox(
                height: 20,
              ),
              RentalCardWidget(
                title: 'Valorização',
                variation: 74,
                color: Colors.green,
              ),
              SizedBox(
                height: 20,
              ),
              RentalCardWidget(
                title: 'Valorização',
                variation: 32,
                color: Colors.pink,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
