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
      case 10:
        text = const Text('19:00', style: style);
        break;
      case 45:
        text = const Text('19:10', style: style);
        break;
      case 80:
        text = const Text('19:20', style: style);
        break;
      case 120:
        text = const Text('19:20', style: style);
        break;
      case 155:
        text = const Text('19:20', style: style);
        break;
      case 190:
        text = const Text('19:20', style: style);
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
      case 0:
        text = '10K';
        break;
      case 4800:
        text = '20k';
        break;
      case 9600:
        text = '30k';
        break;
      case 14400:
        text = '40k';
        break;
      case 19200:
        text = '50k';
        break;
      case 24000:
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
      maxX: 200,
      minY: -1000,
      maxY: 20000,
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
            const FlSpot(21, 614.056771881173),
            const FlSpot(22, 1143.1565180119383),
            const FlSpot(23, 2250.0614860463256),
            const FlSpot(24, 183.27667970461636),
            const FlSpot(25, 1606.6304751122975),
            const FlSpot(26, 414.7814063664449),
            const FlSpot(27, 457.01708336278205),
            const FlSpot(28, 934.8482789229236),
            const FlSpot(29, 1077.1450849047937),
            const FlSpot(30, 105.26097182235605),
            const FlSpot(31, 341.8209216923862),
            const FlSpot(32, 2246.249257691755),
            const FlSpot(33, 546.8289525345883),
            const FlSpot(34, 701.3308262498931),
            const FlSpot(35, 2934.1938476056616),
            const FlSpot(36, 2915.6192103831922),
            const FlSpot(37, 3205.1294485784474),
            const FlSpot(38, 1332.2652004169217),
            const FlSpot(39, 3177.7486072282295),
            const FlSpot(40, 1845.9973325009669),
            const FlSpot(41, 3016.9194616295035),
            const FlSpot(42, 3381.164511746896),
            const FlSpot(43, 104.27844008189399),
            const FlSpot(44, 3862.987220616659),
            const FlSpot(45, 3560.492012710031),
            const FlSpot(46, 1477.6897626107484),
            const FlSpot(47, 184.49948954930608),
            const FlSpot(48, 1674.698069795151),
            const FlSpot(49, 3004.1451662941276),
            const FlSpot(50, 1057.23854972661),
            const FlSpot(51, 2812.588500575598),
            const FlSpot(52, 4360.282829685282),
            const FlSpot(53, 4284.169267798869),
            const FlSpot(54, 5084.299221195759),
            const FlSpot(55, 2819.993859870213),
            const FlSpot(56, 164.67830859866552),
            const FlSpot(57, 2986.315806330865),
            const FlSpot(58, 2502.2247118345226),
            const FlSpot(59, 1488.7907498069003),
            const FlSpot(60, 4994.992006471198),
            const FlSpot(61, 5600.357999292509),
            const FlSpot(62, 4481.7004766644295),
            const FlSpot(63, 2324.2454060038704),
            const FlSpot(64, 3189.580991610616),
            const FlSpot(65, 1489.8729554371614),
            const FlSpot(66, 2477.0252893481975),
            const FlSpot(67, 611.3884375978506),
            const FlSpot(68, 2303.17589078573),
            const FlSpot(69, 630.4778615027607),
            const FlSpot(70, 5555.359578169113),
            const FlSpot(71, 4921.290341605652),
            const FlSpot(72, 3985.24844319511),
            const FlSpot(73, 4440.121302042259),
            const FlSpot(74, 4932.76558550726),
            const FlSpot(75, 3771.470809598828),
            const FlSpot(76, 2085.4630005510676),
            const FlSpot(77, 6082.121310445063),
            const FlSpot(78, 5921.481154723982),
            const FlSpot(79, 554.8623549652534),
            const FlSpot(80, 6950.589231349873),
            const FlSpot(81, 4672.194196977173),
            const FlSpot(82, 7291.754220242509),
            const FlSpot(83, 1932.1740568663474),
            const FlSpot(84, 2767.1012648683463),
            const FlSpot(85, 5015.681178539787),
            const FlSpot(86, 1155.275078529105),
            const FlSpot(87, 4247.503203269085),
            const FlSpot(88, 1759.1983522436537),
            const FlSpot(89, 1400.5072358071056),
            const FlSpot(90, 7122.329042076475),
            const FlSpot(91, 4561.118579331473),
            const FlSpot(92, 5895.311663363006),
            const FlSpot(93, 2939.0597868878035),
            const FlSpot(94, 7412.717824177822),
            const FlSpot(95, 8118.192495676929),
            const FlSpot(96, 1276.2556366831554),
            const FlSpot(97, 2728.1882403859604),
            const FlSpot(98, 8101.906365607443),
            const FlSpot(99, 170.22704756660613),
            const FlSpot(100, 9072.96806352731),
            const FlSpot(101, 4893.513797262258),
            const FlSpot(102, 1953.8644534402265),
            const FlSpot(103, 2033.898118952689),
            const FlSpot(104, 6521.5914993180595),
            const FlSpot(105, 8386.502906755202),
            const FlSpot(106, 9359.597435045898),
            const FlSpot(107, 6973.170484483139),
            const FlSpot(108, 7684.779816875047),
            const FlSpot(109, 7277.766492643),
            const FlSpot(110, 308.39087953077615),
            const FlSpot(111, 8344.60808713409),
            const FlSpot(112, 5723.330288320605),
            const FlSpot(113, 1736.363244090078),
            const FlSpot(114, 1171.5148139611335),
            const FlSpot(115, 2077.1899056631655),
            const FlSpot(116, 8946.043697066227),
            const FlSpot(117, 4663.521535402037),
            const FlSpot(118, 1175.5956190514828),
            const FlSpot(119, 8816.773965830584),
            const FlSpot(120, 1972.7075896026188),
            const FlSpot(121, 8061.217021063083),
            const FlSpot(122, 740.8149502835353),
            const FlSpot(123, 5051.642979210397),
            const FlSpot(124, 3556.032361188518),
            const FlSpot(125, 3354.9091137623695),
            const FlSpot(126, 4608.565564343004),
            const FlSpot(127, 5379.860964324189),
            const FlSpot(128, 5915.494201260862),
            const FlSpot(129, 814.7740850688091),
            const FlSpot(130, 4178.658086025526),
            const FlSpot(131, 9869.915172861332),
            const FlSpot(132, 4173.2009908259515),
            const FlSpot(133, 6895.420298120885),
            const FlSpot(134, 5062.560900215985),
            const FlSpot(135, 10048.951896728942),
            const FlSpot(136, 12543.604310012126),
            const FlSpot(137, 12274.770395320249),
            const FlSpot(138, 9524.449875638653),
            const FlSpot(139, 9325.803101254634),
            const FlSpot(140, 7786.102075467363),
            const FlSpot(141, 4721.82714660151),
            const FlSpot(142, 7826.13370690334),
            const FlSpot(143, 10751.843963564743),
            const FlSpot(144, 2439.7551714088113),
            const FlSpot(145, 1331.4107430030663),
            const FlSpot(146, 13787.628066350075),
            const FlSpot(147, 9507.740270452003),
            const FlSpot(148, 10939.348208230731),
            const FlSpot(149, 3508.64441954919),
            const FlSpot(150, 6365.7330197640795),
            const FlSpot(151, 6763.795116186387),
            const FlSpot(152, 3303.8182346907397),
            const FlSpot(153, 12083.81955076419),
            const FlSpot(154, 13034.729508706465),
            const FlSpot(155, 2018.272654781696),
            const FlSpot(156, 368.30849604526713),
            const FlSpot(157, 419.6752973380574),
            const FlSpot(158, 4291.985068243219),
            const FlSpot(159, 10569.130265729205),
            const FlSpot(160, 13870.077507870152),
            const FlSpot(161, 3547.9047310339524),
            const FlSpot(162, 3103.0639757323556),
            const FlSpot(163, 4242.06322986886),
            const FlSpot(164, 1861.3304478041239),
            const FlSpot(165, 6924.614180988375),
            const FlSpot(166, 16385.283327289446),
            const FlSpot(167, 7432.376625116772),
            const FlSpot(168, 4837.588229469915),
            const FlSpot(169, 1753.449654560246),
            const FlSpot(170, 2304.16280504731),
            const FlSpot(171, 14428.976831289112),
            const FlSpot(172, 12283.7468066335),
            const FlSpot(173, 16424.595626313963),
            const FlSpot(174, 15238.156184774305),
            const FlSpot(175, 789.3561350493727),
            const FlSpot(176, 11060.582778583444),
            const FlSpot(177, 10235.663638565322),
            const FlSpot(178, 2931.0730387581893),
            const FlSpot(179, 17629.778792761335),
            const FlSpot(180, 12885.403733233165),
            const FlSpot(181, 11448.947701928393),
            const FlSpot(182, 245.4458898350236),
            const FlSpot(183, 16664.03857437158),
            const FlSpot(184, 10986.323290399969),
            const FlSpot(185, 14425.810835030888),
            const FlSpot(186, 10707.142332653082),
            const FlSpot(187, 13820.797144212427),
            const FlSpot(188, 7212.828064949768),
            const FlSpot(189, 7947.82635409046),
            const FlSpot(190, 16512.71796530294),
            const FlSpot(191, 17205.339743074765),
            const FlSpot(192, 8221.539307903173),
            const FlSpot(193, 18809.672073200847),
            const FlSpot(194, 10068.948081896388),
            const FlSpot(195, 13103.119548419503),
            const FlSpot(196, 2032.9254929839908),
            const FlSpot(197, 4935.748646511664),
            const FlSpot(198, 11146.796903218838),
            const FlSpot(199, 17498.409655210817),
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
