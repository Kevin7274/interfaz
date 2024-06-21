import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/heart_rate_data.dart';
import 'widgets/heart_rate_display.dart';

class HeartRateMonitor extends StatefulWidget {
  @override
  _HeartRateMonitorState     createState() => _HeartRateMonitorState();
}

class _HeartRateMonitorState extends State<HeartRateMonitor> {
  List<HeartRateData> _heartRateData = [];

  @override
  void initState() {
    super.initState();
    _initHeartRateSensor();
  }

  Future<void> _initHeartRateSensor() async {
    // Initialize the heart rate sensor (platform-specific code)
    // For example, on Wear OS, you can use the `wear` package
    // import 'package:wear/wear.dart';
    // await Wear.heartRateSensor.init();
  }

  Future<void> _readHeartRate() async {
    // Read the heart rate data from the sensor (platform-specific code)
    // For example, on Wear OS, you can use the `wear` package
    // int heartRate = await Wear.heartRateSensor.read();
    // _heartRateData.add(HeartRateData(heartRate, DateTime.now()));
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heart Rate Monitor'),
      ),
      body: Center(
        child: HeartRateDisplay(_heartRateData),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _readHeartRate,
        tooltip: 'Read Heart Rate',
        child: Icon(Icons.favorite),
      ),
    );
  }
}