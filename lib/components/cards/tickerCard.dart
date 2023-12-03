import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const ButtonWidget({required this.title, this.onPressed});

  final double radii = 8.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: const Row(
        children: [
          // logo,
          Column(
            children: [
              Text('Ethereum'),
              Text('\$3,245.03\b'),
            ],
          ),
          Column(
            children: [
              Text('Ethereum'),
              Text('\$3,245.03\b'),
            ],
          )
        ],
      ),
    );
  }
}
