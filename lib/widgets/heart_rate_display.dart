import 'package:flutter/material.dart';
import '/models/heart_rate_data.dart';

class HeartRateDisplay extends StatelessWidget {
  final List<HeartRateData> heartRateData;

  HeartRateDisplay(this.heartRateData);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: heartRateData.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Heart Rate: ${heartRateData[index].heartRate} bpm'),
          subtitle: Text('Timestamp: ${heartRateData[index].timestamp}'),
        );
      },
    );
  }
}