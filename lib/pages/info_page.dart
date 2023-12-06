import 'package:finance_app/components/charts/line_chart.dart';
import 'package:finance_app/components/go_back_title.dart';
import 'package:finance_app/components/variation_badge.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool starred = false;
  late Future favoritesFuture;

  _handleGetFavorites(context) async {
    try {
      final result = await Supabase.instance.client
          .from('favorites')
          .select()
          .eq('user_id', Supabase.instance.client.auth.currentUser?.id);

      if (result?.length > 0) {
        setState(() {
          starred = true;
        });
      }

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

  void _handleEnableStar() async {
    try {
      setState(() {
        starred = true;
      });

      await Supabase.instance.client.from('favorites').insert(
          {'id': 1, 'user_id': Supabase.instance.client.auth.currentUser?.id});
    } catch (error) {
      final message = error.toString();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('$message'),
      ));
    }
  }

  void _handleDisableStar() async {
    try {
      setState(() {
        starred = false;
      });

      await Supabase.instance.client.from('favorites').delete().eq('id', 1);
    } catch (error) {
      final message = error.toString();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('$message'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const GoBackTitleWidget(title: 'View'),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset(
                          'lib/assets/eth-icon.png',
                          alignment: Alignment.topLeft,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ethereum',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text('\$3,245.03',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 255, 0.5))),
                          ],
                        ),
                      ]),
                      FutureBuilder(
                        future: favoritesFuture,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                          } else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }

                          // By default, show a loading spinner.
                          return const Text('');
                        },
                      ),
                      (!starred
                          ? GestureDetector(
                              child: const Icon(
                                Icons.star_border_outlined,
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                                size: 30.0,
                              ),
                              onTap: () {
                                _handleEnableStar();
                              },
                            )
                          : GestureDetector(
                              child: const Icon(
                                Icons.star,
                                color: Color.fromRGBO(255, 166, 0, 1),
                                size: 30.0,
                              ),
                              onTap: () {
                                _handleDisableStar();
                              },
                            ))
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: BadgeVariationWidget(variation: 12.35))
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Chart',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  const Row(
                    children: [
                      Text(
                        'Ethereum/USD',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(255, 255, 255, 0.5)),
                      ),
                      Icon(
                        Icons.expand_more,
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        size: 22.0,
                      ),
                    ],
                  ),
                  const LineChartWidget(),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'compradores',
                            style: TextStyle(fontSize: 11),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 30,
                            child: LinearProgressIndicator(
                              color: Colors.blue,
                              backgroundColor: Colors.blue,
                              value: 1,
                              semanticsLabel: 'compradores / vendedores',
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '80%',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        child: LinearProgressIndicator(
                          color: Colors.blue,
                          backgroundColor: Colors.red[400],
                          value: 0.8,
                          semanticsLabel: 'compradores / vendedores',
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Vendedores',
                            style: TextStyle(fontSize: 11),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 30,
                            child: LinearProgressIndicator(
                              color: Colors.red[400],
                              backgroundColor: Colors.red[400],
                              value: 1,
                              semanticsLabel: 'compradores / vendedores',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            '20%',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mínima',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              'Máxima',
                              style: TextStyle(fontSize: 11),
                            )
                          ]),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        child: LinearProgressIndicator(
                          color: Colors.blue,
                          backgroundColor: Colors.red[400],
                          value: 0.8,
                          semanticsLabel: 'compradores / vendedores',
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'R\$ 2,947.52',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              'R\$ 3,245.03',
                              style: TextStyle(fontSize: 11),
                            )
                          ]),
                    ],
                  )
                ],
              ),
            ],
          )),
    );
  }
}
