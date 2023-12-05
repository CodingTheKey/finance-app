import 'dart:math';

import 'package:finance_app/components/cards/ticker_card.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  static const double radii = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 34.0,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Favorites',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              )
            ]),
          ),
          const SizedBox(
            height: 25,
          ),
          const InputWidget(placeholder: 'search'),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 280,
            child: ListView.builder(
              itemCount: 9,
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
        ]),
      ),
    );
  }
}
