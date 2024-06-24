import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/heart_rate_data.dart';
import 'widgets/heart_rate_display.dart';

class HeartRateMonitor extends StatefulWidget {
  @override
  _HeartRateMonitorState createState() => _HeartRateMonitorState();
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
        title: Text('Heart Rate Monitor', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)), // Set the text color to black
        backgroundColor: Colors.pinkAccent[400], // Set the app bar color to a neon pink
        elevation: 10, // Add some elevation to the app bar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.cyanAccent[400], Colors.black], // Set the gradient colors to a neon cyan and black
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HeartRateDisplay(_heartRateData),
              SizedBox(height: 20), // Add some space between the heart rate display and the button
              FloatingActionButton(
                onPressed: _readHeartRate,
                tooltip: 'Read Heart Rate',
                child: Icon(Icons.favorite, size: 30, color: Colors.yellowAccent[400]), // Increase the size of the heart icon and set the color to a neon yellow
                backgroundColor: Colors.greenAccent[400], // Set the button color to a neon green
                elevation: 10, // Add some elevation to the button
              ),
            ],
          ),
        ),
      ),
    );
  }
}