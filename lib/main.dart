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
            Image.asset('icons/heart.png'), // Add the heart pulse image
            HeartRateMonitor(),
            SizedBox(height: 20), // Add some space between the heart rate monitor and the button
            ElevatedButton(
              child: Text('Emergency Call'),
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
        title: Text('Emergency Call'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.phone, size: 50, color: Colors.red), // Phone icon
            SizedBox(height: 20), // Add some space between the icon and the text
            Text(
              'Call 911',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}