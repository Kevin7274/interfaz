import 'package:flutter/material.dart';
import 'package:heart_rate_monitor/heart_rate_monitor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heart Rate Monitor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pinkAccent[400], // Set the accent color to a neon pink
      ),
      home: HeartRateMonitorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HeartRateMonitorPage extends StatefulWidget {
  @override
  _HeartRateMonitorPageState createState() => _HeartRateMonitorPageState();
}

class _HeartRateMonitorPageState extends State<HeartRateMonitorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('icons/heart.png', width: 100, height: 100), // Increase the size of the heart image
            SizedBox(height: 20), // Add some space between the heart image and the heart rate monitor
            HeartRateMonitor(),
            SizedBox(height: 40), // Add some space between the heart rate monitor and the button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.cyanAccent[400], // Set the button color to a neon cyan
                onPrimary: Colors.black, // Set the text color to black
                elevation: 10, // Add some elevation to the button
                padding: EdgeInsets.all(20), // Add some padding to the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Make the button rounded
                ),
              ),
              child: Text('Emergency Call', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)), // Increase the font size and set the text color to black
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmergencyCallPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencyCallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Call', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)), // Increase the font size and set the text color to black
        backgroundColor: Colors.greenAccent[400], // Set the app bar color to a neon green
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.phone, size: 80, color: Colors.yellowAccent[400]), // Increase the size of the phone icon and set the color to a neon yellow
            SizedBox(height: 20), 
            Text(
              'Call 911',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black), // Increase the font size and set the text color to black
            ),
          ],
        ),
      ),
    );
  }
}