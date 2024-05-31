import 'package:flutter/material.dart';

class TextDataEntity {
  final String firstName;
  final String lastName;
  final String gender;
  final String weight;

  TextDataEntity({
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.weight,
  });
}

class TimeDataEntity {
  final TimeOfDay pickedTime;

  TimeDataEntity({required this.pickedTime});
}
