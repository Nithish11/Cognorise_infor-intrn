import 'package:flutter/material.dart';
import 'package:alarm_clock_app/models/alarm.dart';

class AlarmProvider with ChangeNotifier {
  List<Alarm> _alarms = [];

  List<Alarm> get alarms => _alarms;

  void addAlarm(Alarm alarm) {
    _alarms.add(alarm);
    notifyListeners();
  }

  void toggleAlarm(int index) {
    _alarms[index].isActive = !_alarms[index].isActive;
    notifyListeners();
  }
}
