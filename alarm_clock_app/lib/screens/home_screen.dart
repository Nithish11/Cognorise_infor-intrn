import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:alarm_clock_app/screens/set_alarm_screen.dart';
import 'package:alarm_clock_app/models/alarm.dart';
import 'package:provider/provider.dart';
import 'package:alarm_clock_app/providers/alarm_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alarm Clock App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              DateFormat('hh:mm:ss a').format(DateTime.now()),
              style: TextStyle(fontSize: 48),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SetAlarmScreen()),
              );
            },
            child: Text('Set New Alarm'),
          ),
          Expanded(
            child: Consumer<AlarmProvider>(
              builder: (context, alarmProvider, child) {
                return ListView.builder(
                  itemCount: alarmProvider.alarms.length,
                  itemBuilder: (context, index) {
                    Alarm alarm = alarmProvider.alarms[index];
                    return ListTile(
                      title: Text(alarm.time.format(context)),
                      trailing: Switch(
                        value: alarm.isActive,
                        onChanged: (value) {
                          alarmProvider.toggleAlarm(index);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
