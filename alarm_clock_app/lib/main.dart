import 'package:flutter/material.dart';
import 'package:alarm_clock_app/screens/home_screen.dart';
import 'package:alarm_clock_app/providers/alarm_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AlarmClockApp());
}

class AlarmClockApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AlarmProvider(),
      child: MaterialApp(
        title: 'Alarm Clock App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
