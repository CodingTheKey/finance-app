import 'package:flutter/material.dart';

class TickerCardWidget extends StatelessWidget {
  final String title;
  final double variation;
  final double price;
  final String symbol;
  final VoidCallback? onPressed;

  const TickerCardWidget(
      {required this.title,
      required this.price,
      required this.variation,
      required this.symbol,
      this.onPressed,
      super.key});

  final double radii = 8.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Card(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Image.asset('lib/assets/eth-icon.png'),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text('R\$ ${price.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 0.5))),
                  ],
                ),
              ]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${variation.toStringAsFixed(2)}%',
                    style: TextStyle(
                        color: this.variation > 0
                            ? Colors.green[400]
                            : Colors.orange[500]),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(symbol,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                ],
              )
            ],
          ),
        ));
  }
}
