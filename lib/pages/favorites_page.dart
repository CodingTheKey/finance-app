import 'dart:math';

import 'package:finance_app/components/cards/ticker_card.dart';
import 'package:finance_app/components/go_back_title.dart';
import 'package:finance_app/components/input/input.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  static const double radii = 10;
  late Future favoritesFuture;

  _handleGetFavorites(context) async {
    try {
      final result = await Supabase.instance.client
          .from('favorites')
          .select()
          .eq('user_id', Supabase.instance.client.auth.currentUser?.id);

      return result;
    } catch (error) {
      final message = error.toString();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('$message'),
      ));
    }
  }

  @override
  void initState() {
    favoritesFuture = _handleGetFavorites(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const GoBackTitleWidget(title: 'Favorites'),
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
            child: FutureBuilder(
              future: favoritesFuture,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
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
                  );
                } else if (snapshot.hasError) {
                  // return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const Text('');
              },
            ),
          ),
        ]),
      ),
    );
  }
}
