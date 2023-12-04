import 'package:flutter/material.dart';

class BadgeVariationWidget extends StatelessWidget {
  final double variation;
  const BadgeVariationWidget({required this.variation, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        color: Color.fromRGBO(229, 255, 241, 1),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.5, vertical: 6),
            child: Text(
              '+$variation%',
              style: TextStyle(color: Colors.green[700], fontSize: 11),
            )));
  }
}
