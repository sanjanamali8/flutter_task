import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

import 'controller/app_controller.dart';

class DataScreen extends StatelessWidget {
  DataScreen({super.key});

  final AppController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    
    return Obx(() {
      List<FlSpot> lineChartData = [];
    controller.data['line'].asMap().entries.forEach(
          (entry) => lineChartData.add(
            FlSpot(
              entry.key.toDouble(),
              entry.value.toDouble(),
            ),
          ),
        );
      return Scaffold(
      appBar: AppBar(
        title: const Text('Data Visualization'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Radar Chart'),
            SizedBox(
              height: 200,
              child: RadarChart(
                RadarChartData(
                  dataSets: [
                    RadarDataSet(
                      dataEntries: controller.data['radar']
                          .map<RadarEntry>(
                              (value) => RadarEntry(value: value.toDouble()))
                          .toList(),
                      borderColor: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Pie Chart'),
            Expanded(
              child: PieChart(
                PieChartData(
                  sectionsSpace: 4,
                  centerSpaceRadius: 0,
                  sections: [
                    PieChartSectionData(
                      value: controller.data['pie']['yes'].toDouble(),
                      color: Colors.blue.shade200,
                      title:
                          'Yes, ${controller.data['pie']['yes'].toDouble()}%',
                      radius: 115,
                      titlePositionPercentageOffset: 1.4,
                    ),
                    PieChartSectionData(
                      value: controller.data['pie']['no'].toDouble(),
                      color: Colors.blue,
                      title: 'No, ${controller.data['pie']['no'].toDouble()}%',
                      radius: 100,
                      titlePositionPercentageOffset: 1.4,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Line Chart'),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: lineChartData,
                      isCurved: false,
                      color: Colors.blue,
                      barWidth: 4,
                      dotData: const FlDotData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    });
  }
}