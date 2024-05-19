import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:alarm_clock_app/models/alarm.dart';
import 'package:alarm_clock_app/providers/alarm_provider.dart';

class SetAlarmScreen extends StatefulWidget {
  @override
  _SetAlarmScreenState createState() => _SetAlarmScreenState();
}

class _SetAlarmScreenState extends State<SetAlarmScreen> {
  TimeOfDay selectedTime = TimeOfDay.now();
  String selectedTone = 'Default Tone';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Alarm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Alarm Time'),
              trailing: Text(selectedTime.format(context)),
              onTap: _selectTime,
            ),
            ListTile(
              title: Text('Alarm Tone'),
              trailing: Text(selectedTone),
              onTap: _selectTone,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Provider.of<AlarmProvider>(context, listen: false).addAlarm(
                  Alarm(time: selectedTime, tone: selectedTone),
                );
                Navigator.pop(context);
              },
              child: Text('Save Alarm'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  Future<void> _selectTone() async {
    // Implement tone selection here
  }
}
