// import 'dart:developer';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:unrespiro/model/res/constant/app_colors.dart';
// import 'package:unrespiro/model/res/widgets/app_text.dart.dart';
//
// import '../../../provider/theme/theme_provider.dart';
//
// class CartesianChart extends StatefulWidget {
//   final String title, time;
//    CartesianChart({super.key, required this.title, required this.time});
//
//   @override
//   State<CartesianChart> createState() => _CartesianChartState();
// }
//
// class _CartesianChartState extends State<CartesianChart> {
//   // List<_SaleData> dataSource = [
//   @override
//   Widget build(BuildContext context) {
//     log("Creating");
//    // final themeProvider = Provider.of<ThemeProvider>(context);
//    // final _isDark = themeProvider.isDarkMode;
//     return SizedBox(
//       height: 250,
//       width:double.infinity,
//       child: AppTextWidget(text: "text")
//       // SfCartesianChart(
//       //   primaryXAxis: CategoryAxis(
//       //     majorGridLines: MajorGridLines(width: 0),
//       //     axisLine: AxisLine(width: 1, color: _isDark ? Color(0xff333333) : Colors.white),
//       //     majorTickLines: MajorTickLines(color: _isDark ? Color(0xff333333) : Colors.white),
//       //     labelStyle: TextStyle(color: _isDark ? Color(0xff333333) : Colors.white),
//       //   ),
//       //   primaryYAxis: NumericAxis(
//       //     majorGridLines: MajorGridLines(width: 0),
//       //     axisLine: AxisLine(width: 1, color: _isDark ? Color(0xff333333) : Colors.white),
//       //     majorTickLines: MajorTickLines(color: _isDark ? Color(0xff333333) : Colors.white),
//       //     labelStyle: TextStyle(color: _isDark ? Color(0xff333333) : Colors.white),
//       //     numberFormat: NumberFormat('##0'),
//       //   ),
//       //   plotAreaBackgroundColor: Colors.transparent,
//       //   plotAreaBorderColor: Colors.transparent,
//       //   plotAreaBorderWidth: 0,
//       //   title: ChartTitle(
//       //     text: title,
//       //     textStyle: GoogleFonts.nunitoSans(
//       //       color: Colors.white,
//       //       fontSize: 12,
//       //       fontWeight: FontWeight.w600,
//       //     ),
//       //   ),
//       //   legend: const Legend(isVisible: false),
//       //   tooltipBehavior: TooltipBehavior(
//       //     enable: true,
//       //     textStyle: TextStyle(color: _isDark ? Color(0xff333333) : Colors.white),
//       //   ),
//       //   series: <CartesianSeries<dynamic, dynamic>>[
//       //     SplineSeries<_SaleData, String>(
//       //       color: _isDark ? AppColors.appYellowColor : Colors.white,
//       //       width: 2,
//       //       dataSource: dataSource,
//       //       xValueMapper: (_SaleData sales, _) => sales.year,
//       //       yValueMapper: (_SaleData sales, _) => sales.sales,
//       //       dataLabelSettings: DataLabelSettings(
//       //         isVisible: false,
//       //         textStyle: TextStyle(color: _isDark ? Color(0xff333333) : Colors.white),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//     );
//   }
// }
//
// // class _SaleData {
// //   _SaleData(this.year, this.sales);
// //
// //   final String year;
// //   final double sales;
// // }
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: LineChart(
        LineChartData(
          backgroundColor:
              Colors.transparent, // Set your gradient background color here
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 20),
                FlSpot(1, 10),
                FlSpot(2, 25),
                FlSpot(3, 15),
                FlSpot(4, 35),
                FlSpot(5, 20),
                FlSpot(6, 50),
              ],
              isCurved: true,
              colors: [Colors.white],
              barWidth: 2,
              belowBarData: BarAreaData(
                show: true,
                colors: [Colors.transparent],
              ),
              dotData: FlDotData(show: false), // This line removes the dots
            ),
          ],
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) =>
                  TextStyle(color: Colors.white, fontSize: 10),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 0:
                    return '0';
                  case 10:
                    return '00:30';
                  case 20:
                    return '00:07';
                  case 30:
                    return '00:20';
                  case 40:
                    return '00:45';
                  case 50:
                    return '00:32';
                  case 60:
                    return '00:09';
                  case 70:
                    return '00:05';
                  case 80:
                    return '00:30';
                  case 90:
                    return '00:30';
                  default:
                    return '';
                }
              },
              interval: 2,
              margin: 10,
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) =>
                  TextStyle(color: Colors.white, fontSize: 12),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 0:
                    return 'Jan.';
                  case 1:
                    return 'Feb.';
                  case 2:
                    return 'Mar.';
                  case 3:
                    return 'Apr.';
                  case 4:
                    return 'May.';
                  case 5:
                    return 'Jun.';
                  case 6:
                    return 'Jul.';
                }
                return '';
              },
            ),
          ),
          gridData: FlGridData(
            show: false,
            drawVerticalLine: true,
            drawHorizontalLine: true,
            getDrawingHorizontalLine: (value) {
              if (value % 10 == 0) {
                return FlLine(
                  color: Colors.white,
                  strokeWidth: 1,
                  dashArray: [5, 5], // Optional: dashed lines
                );
              }
              return FlLine(
                color: Colors.transparent,
                strokeWidth: 0,
              );
            },
            getDrawingVerticalLine: (value) {
              if (value % 1 == 0) {
                return FlLine(
                  color: Colors.white,
                  strokeWidth: 1,
                  dashArray: [5, 5], // Optional: dashed lines
                );
              }
              return FlLine(
                color: Colors.transparent,
                strokeWidth: 0,
              );
            },
            horizontalInterval: 10,
            verticalInterval: 1,
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              left: BorderSide(color: Colors.white, width: 1),
              bottom: BorderSide(color: Colors.white, width: 1),
            ),
          ),
        ),
      ),
    );
  }
}
