import 'package:finance_app/components/charts/line_chart.dart';
import 'package:finance_app/components/variation_badge.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
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
                    'View',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
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
