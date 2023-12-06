import 'package:flutter/material.dart';

class GoBackTitleWidget extends StatelessWidget {
  final String title;

  const GoBackTitleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
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
        Text(
          '$title',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
        )
      ]),
    );
  }
}
