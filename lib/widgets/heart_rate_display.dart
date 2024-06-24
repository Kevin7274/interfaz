import 'package:flutter/material.dart';
import 'odels/heart_rate_data.dart';

class HeartRateDisplay extends StatelessWidget {
  final List<HeartRateData> heartRateData;

  HeartRateDisplay(this.heartRateData);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: heartRateData.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.cyanAccent[400], // Set the card color to a neon cyan
            child: ListTile(
              title: Text('Heart Rate: ${heartRateData[index].heartRate} bpm', style: TextStyle(color: Colors.black)), // Set the text color to black
              subtitle: Text('Timestamp: ${heartRateData[index].timestamp}', style: TextStyle(color: Colors.black)), // Set the text color to black
            ),
          );
        },
      ),
    );
  }
}