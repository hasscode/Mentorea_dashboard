import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mentorea_dashboard/core/theme/app_text_styles.dart';

class DashboardLineChartWidget extends StatelessWidget {
  const DashboardLineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      padding: EdgeInsets.all(37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "User-to-Session Interaction Metrics",
            style: AppStyles.styleBold24,
          ),
          SizedBox(height: 37),
          SizedBox(
            height: 444,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  drawHorizontalLine: true,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: (Color(0xffEAEAEA)), // Light horizontal grid lines
                      strokeWidth: 1, // Thin lines
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Text("${value.toInt()}%");
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return Text("${value ~/ 1000}k");
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: Color(0xff050A30)),
                ),
                minX: 5000,
                maxX: 60000,
                minY: 0,
                maxY: 100,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(5000, 20),
                      FlSpot(10000, 40),
                      FlSpot(15000, 35),
                      FlSpot(20000, 45),
                      FlSpot(22000, 90),
                      FlSpot(30000, 50),
                      FlSpot(35000, 20.544),
                      FlSpot(40000, 60),
                      FlSpot(45000, 80),
                      FlSpot(50000, 70),
                      FlSpot(60000, 65),
                    ],
                    color: Color(0xff050A30),
                    barWidth: 1,
                    belowBarData: BarAreaData(
                      show: true,
                      color: Color(0xff050A30).withOpacity(0.5),
                    ),
                    dotData: FlDotData(show: true),
                  ),
                ],
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    tooltipRoundedRadius: 2, // Optional: Adjust corner radius
                    tooltipPadding: const EdgeInsets.all(6),
                    tooltipMargin: 10,
                    getTooltipItems: (List<LineBarSpot> touchedSpots) {
                      return touchedSpots.map((LineBarSpot touchedSpot) {
                        return LineTooltipItem(
                          '${touchedSpot.y}',
                          AppStyles.styleBold12
                              .copyWith(color: Colors.white), // Text color
                        );
                      }).toList();
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
