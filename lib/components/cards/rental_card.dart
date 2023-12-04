import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RentalCardWidget extends StatelessWidget {
  final String title;
  final int variation;
  final VoidCallback? onPressed;
  final Color? color;
  final double radii = 8.0;

  const RentalCardWidget(
      {required this.title,
      required this.variation,
      this.color,
      this.onPressed,
      super.key});

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
                CircularPercentIndicator(
                  radius: 32.0,
                  animation: true,
                  circularStrokeCap: CircularStrokeCap.round,
                  lineWidth: 6.5,
                  percent: variation / 100,
                  center: Text(
                    '$variation %',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  backgroundColor: const Color.fromRGBO(3, 123, 203, 0.25),
                  progressColor: color ?? Colors.blue[700],
                ),
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
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Ver mais',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5))),
                      ],
                    )
                  ],
                ),
              ]),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.chevron_right,
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    size: 34.0,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
