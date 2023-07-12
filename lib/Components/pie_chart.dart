import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smaboo_uis/widgets/chart_badge.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 28,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 13.sp : 13.sp;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Color(0xff01d2bd),
            value: 60,
            title: '60%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontFamily: "Gilroy",
              fontStyle: FontStyle.normal,
              color: Colors.white,
              shadows: shadows,
            ),
            badgePositionPercentageOffset: 1.3,
            badgeWidget: ChartBadge(
              color: Color(0xff01d2bd),
              time: "60-120min",
              number: "34",
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xfffe9929),
            value: 4,
            title: '4%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontFamily: "Gilroy",
              fontStyle: FontStyle.normal,
              color: Colors.white,
              shadows: shadows,
            ),
            badgePositionPercentageOffset: 1.3,
            badgeWidget: ChartBadge(
              color: Color(0xfffe9929),
              time: "0-15min",
              number: "18",
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xff000000),
            value: 16,
            title: '16%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontFamily: "Gilroy",
              fontStyle: FontStyle.normal,
              color: Colors.white,
              shadows: shadows,
            ),
            badgePositionPercentageOffset: 1.3,
            badgeWidget: ChartBadge(
              color: Color(0xff000000),
              time: "120-240min",
              number: "34",
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Color(0xfffed629),
            value: 20,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              fontFamily: "Gilroy",
              fontStyle: FontStyle.normal,
              color: Colors.white,
              shadows: shadows,
            ),
            badgePositionPercentageOffset: 1.3,
            badgeWidget: ChartBadge(
              color: Color(0xfffed629),
              time: "15-30min",
              number: "18",
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
