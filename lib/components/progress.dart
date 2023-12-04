import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatefulWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  State<ProgressIndicatorWidget> createState() =>
      _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        LinearProgressIndicator(
          backgroundColor: Colors.green,
          color: Colors.blue,
          value: 0.1,
          semanticsLabel: 'compradores / vendedores',
        ),
      ],
    );
  }
}
