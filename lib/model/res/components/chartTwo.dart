// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:provider/provider.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:unrespiro/model/res/constant/app_colors.dart';
//
// import '../../../provider/theme/theme_provider.dart';
//
// class CartesianChartTwo extends StatefulWidget {
//   final String title,time;
//   const CartesianChartTwo({super.key,  required this.title, required this.time});
//
//   @override
//   State<CartesianChartTwo> createState() => _CartesianChartTwoState();
// }
//
// class _CartesianChartTwoState extends State<CartesianChartTwo> {
//   List<_SalesData> data = [
//     _SalesData('Jan', 80),
//     _SalesData('Feb', 40),
//     _SalesData('Mar', 50),
//     _SalesData('Apr', 40),
//     _SalesData('May', 60),
//     _SalesData('Jun', 50),
//     _SalesData('Jul', 70),
//     _SalesData('Aug', 41),
//     _SalesData('sep', 32),
//     _SalesData('Oct', 34),
//     _SalesData('Nov', 25),
//     _SalesData('Dec', 12),
//   ];
//   List<_SalesData> data2 = [
//     _SalesData('Jan', 50),
//     _SalesData('Feb', 70),
//     _SalesData('Mar', 65),
//     _SalesData('Apr', 30),
//     _SalesData('May', 50),
//     _SalesData('Jun', 40),
//     _SalesData('Jul', 45),
//     _SalesData('Aug', 31),
//     _SalesData('sep', 20),
//     _SalesData('Oct', 35),
//     _SalesData('Nov', 23),
//     _SalesData('Dec', 34),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     final _isDark = themeProvider.isDarkMode;
//     final yAxisFormatter = NumberFormat.compact(); // Use compact number formatting
//     return SizedBox(
//       height: 200,
//       width: 300,
//       child: SfCartesianChart(
//         margin: EdgeInsets.all(10), // Adjust margin
//         primaryXAxis: CategoryAxis(
//           interval: 1,
//           maximumLabels: 12,
//           majorTickLines: MajorTickLines(color: _isDark ? Color(0xff333333) : Colors.grey.withOpacity(0.4)),
//           majorGridLines: MajorGridLines(width: 1,color: Colors.grey.withOpacity(0.4)), // Remove Y-axis grid lines
//           axisLine: AxisLine(
//             color: Colors.grey
//           ),
//           labelStyle:  TextStyle(color: _isDark ? Color(0xff333333):Colors.grey), // X-axis labels
//         ),
//         primaryYAxis: NumericAxis(
//           interval: 12,
//           minimum: 30,
//           maximum: 100,
//           majorTickLines: MajorTickLines(color: _isDark ? Color(0xff333333) : Colors.grey.withOpacity(0.4)),
//           majorGridLines: MajorGridLines(width: 1,color: Colors.grey.withOpacity(0.4)), // Remove Y-axis grid lines
//           axisLine: AxisLine(
//               color: Colors.grey
//           ),
//           labelStyle:  TextStyle(color: _isDark ? Color(0xff333333):Colors.grey),
//           numberFormat: yAxisFormatter,
//         ),
//         title: ChartTitle(text: widget.title ?? "",
//           textStyle:  TextStyle(color: _isDark ? Color(0xff333333):Colors.white,fontSize: 12), // Title text color
//         ),
//         legend: const Legend(isVisible: false,
//           textStyle: const TextStyle(color: Colors.transparent), // Title text color
//         ),
//         tooltipBehavior: TooltipBehavior(enable: true,
//           textStyle:  TextStyle(color: _isDark ? Color(0xff333333):Colors.white), // Title text color
//         ),
//         series: <CartesianSeries<dynamic, dynamic>>[
//           LineSeries<_SalesData, String>(
//             color:  AppColors.appYellowColor ,
//             width: 2, // Line width
//             dataSource: data,
//             xValueMapper: (_SalesData sales, _) => sales.year,
//             yValueMapper: (_SalesData sales, _) => sales.sales,
//             dataLabelSettings: DataLabelSettings(
//               isVisible: false,
//               textStyle: TextStyle(
//                 color: _isDark ? Color(0xff333333) : Colors.black,
//               ), // Data label text color
//             ),),
//       LineSeries<_SalesData, String>(
//       color: Colors.blueAccent ,
//       width: 2, // Line width
//       dataSource: data2,
//       xValueMapper: (_SalesData sales, _) => sales.year,
//       yValueMapper: (_SalesData sales, _) => sales.sales,
//       dataLabelSettings: DataLabelSettings(
//       isVisible: false,
//       textStyle: TextStyle(
//       color: _isDark ? Color(0xff333333) : Colors.black,
//       ), // Data label text color
//       ),)
//         ],
//       ),
//     );
//   }
// }
//
// class _SalesData {
//   _SalesData(this.year, this.sales);
//
//   final String year;
//   final double sales;
// }
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';

import '../../../provider/theme/theme_provider.dart';

class LineChartSampleTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final _isDark = themeProvider.isDarkMode;
    return Container(
      height: 250,
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 30),
                FlSpot(1, 50),
                FlSpot(2, 70),
                FlSpot(3, 60),
                FlSpot(4, 80),
                FlSpot(5, 40),
                FlSpot(6, 60),
                FlSpot(7, 50),
                FlSpot(8, 70),
                FlSpot(9, 60),
                FlSpot(10, 90),
                FlSpot(11, 70),
              ],
              isCurved: true,
              curveSmoothness: 0.1, // Adjust this value for smoother curves
              colors: [Colors.orange],
              barWidth: 2,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
            LineChartBarData(
              spots: [
                FlSpot(0, 40),
                FlSpot(1, 30),
                FlSpot(2, 60),
                FlSpot(3, 50),
                FlSpot(4, 70),
                FlSpot(5, 40),
                FlSpot(6, 50),
                FlSpot(7, 40),
                FlSpot(8, 60),
                FlSpot(9, 50),
                FlSpot(10, 70),
                FlSpot(11, 60),
              ],
              isCurved: true,
              curveSmoothness: 0.1, // Adjust this value for smoother curves
              colors: [Colors.blue],
              barWidth: 2,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
                getTextStyles: (context, value) => TextStyle(
                  color: _isDark ? Colors.grey : Colors.black,
                  fontSize: 12,
                ),
                showTitles: true),
            bottomTitles: SideTitles(
              showTitles: true,
              getTextStyles: (context, value) => TextStyle(
                color: _isDark ? Colors.grey : Colors.black,
                fontSize: 12,
              ),
              getTitles: (value) {

                switch (value.toInt()) {
                  case 0:
                    return 'Ene';
                  case 1:
                    return 'Feb';
                  case 2:
                    return 'Mar';
                  case 3:
                    return 'Abr';
                  case 4:
                    return 'May';
                  case 5:
                    return 'Jun';
                  case 6:
                    return 'Jul';
                  case 7:
                    return 'Ago';
                  case 8:
                    return 'Sep';
                  case 9:
                    return 'Oct';
                  case 10:
                    return 'Nov';
                  case 11:
                    return 'Dic';
                  default:
                    return '';
                }
              },
            ),
          ),
          gridData: FlGridData(show: true,

            drawVerticalLine: false,
            drawHorizontalLine: false,
          ),
          borderData: FlBorderData(show: true,
            border: Border(
              left: BorderSide(color: _isDark ? Colors.grey:Colors.black, width: 1),
              bottom: BorderSide(color: _isDark ? Colors.grey: Colors.black, width: 1),
            ),
          ),
          lineTouchData: LineTouchData(enabled: false),
        ),
      ),
    );
  }
}
