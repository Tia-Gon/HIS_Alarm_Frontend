import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AreaAndLineChart extends StatelessWidget {
  AreaAndLineChart(
    this.lineChartMealDataList,
  );
  final List<FlSpot> lineChartMealDataList;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: false),
          borderData: FlBorderData(
            show: true,
            border: const Border.symmetric(
              horizontal: BorderSide(color: Color(0xFFececec)),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: lineChartMealDataList,
              isCurved: false,
              barWidth: 2,
              color: const Color(0xff3b7863),
              dotData: FlDotData(
                show: false,
              ),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [const Color(0xff3b7863), const Color(0xff3b7863)]
                      .map((color) => color.withOpacity(0.3))
                      .toList(),
                ),
              ),
            ),
          ],
          minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  return value.toInt().isOdd
                      ? Text(
                          value.toInt().toString(),
                          style: const TextStyle(color: Color(0xFF606060)),
                          textAlign: TextAlign.left,
                        )
                      : const SizedBox.shrink();
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: const TextStyle(color: Color(0xFF606060)),
                    textAlign: TextAlign.left,
                  );
                },
                interval: 500,
                reservedSize: 40,
              ),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
          ),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: 1,
            checkToShowHorizontalLine: (double value) {
              return value == 1 || value == 6 || value == 4 || value == 5;
            },
          ),
          maxY: 2500,
        ),
      ),
    );
  }
}
