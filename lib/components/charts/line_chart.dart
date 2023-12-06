import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatefulWidget {
  const LineChartWidget({super.key});

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  List<Color> gradientColors = [
    Color.fromRGBO(58, 111, 248, 1),
    Color.fromRGBO(58, 111, 248, 1),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 11,
        color: Color.fromRGBO(255, 255, 255, 0.6));
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('19:00', style: style);
        break;
      case 7:
        text = const Text('19:10', style: style);
        break;
      case 14:
        text = const Text('19:20', style: style);
        break;
      case 21:
        text = const Text('19:30', style: style);
        break;
      case 29:
        text = const Text('19:40', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        color: Color.fromRGBO(255, 255, 255, 0.6));
    String text;
    switch (value.toInt()) {
      case 10:
        text = '10K';
        break;
      case 270:
        text = '20k';
        break;
      case 520:
        text = '30k';
        break;
      case 780:
        text = '40k';
        break;
      case 1040:
        text = '50k';
        break;
      case 1300:
        text = '60k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      minX: 0,
      maxX: 30,
      minY: 0,
      maxY: 1500,
      lineBarsData: [
        LineChartBarData(
          spots: [
            const FlSpot(0, 0),
            const FlSpot(1, 8.865252244466548),
            const FlSpot(2, 98.8565144027111),
            const FlSpot(3, 134.336403748605),
            const FlSpot(4, 242.7733703433046),
            const FlSpot(5, 219.87996097021403),
            const FlSpot(6, 220.0108560027212),
            const FlSpot(7, 132.05284825547471),
            const FlSpot(8, 149.14419732224962),
            const FlSpot(9, 486.0824258647337),
            const FlSpot(10, 686.4576387478634),
            const FlSpot(11, 402.54413092961414),
            const FlSpot(12, 628.3911400145689),
            const FlSpot(13, 680.270752794042),
            const FlSpot(14, 846.5146348222604),
            const FlSpot(15, 1166.9400651578262),
            const FlSpot(16, 835.3511514294262),
            const FlSpot(17, 1184.845924335014),
            const FlSpot(18, 589.0618924459684),
            const FlSpot(19, 1016.9763537543937),
            const FlSpot(20, 453.84165722567496),
          ],
          isCurved: false,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 2.5,
          // isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
        ),
      ],
    );
  }
}
