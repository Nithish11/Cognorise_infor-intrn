import 'package:flutter/material.dart';

class Alarm {
  TimeOfDay time;
  String tone;
  bool isActive;

  Alarm({
    required this.time,
    required this.tone,
    this.isActive = true,
  });
}
