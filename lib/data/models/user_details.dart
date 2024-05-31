// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

//model for UserDetails Here all of user data is collected.
class UserDetails {
  final int weight;
  final String gender;
  final TimeOfDay wakeUpTime;
  final TimeOfDay sleepTime;
  final String lastName;
  final String firstName;
  final String avatarPath;

  UserDetails({
    required this.weight,
    required this.gender,
    required this.wakeUpTime,
    required this.sleepTime,
    required this.lastName,
    required this.firstName,
    required this.avatarPath,
  });
  //work out time will need to be implimented

  UserDetails copyWith({
    int? weight,
    String? gender,
    TimeOfDay? wakeUpTime,
    TimeOfDay? sleepTime,
    String? lastName,
    String? firstName,
    String? avatarPath,
  }) {
    return UserDetails(
      weight: weight ?? this.weight,
      gender: gender ?? this.gender,
      wakeUpTime: wakeUpTime ?? this.wakeUpTime,
      sleepTime: sleepTime ?? this.sleepTime,
      lastName: lastName ?? this.lastName,
      firstName: firstName ?? this.firstName,
      avatarPath: avatarPath ?? this.avatarPath,
    );
  }

  @override
  String toString() {
    return 'UserDetails(weight: $weight, gender: $gender, wakeUpTime: $wakeUpTime, sleepTime: $sleepTime, lastName: $lastName, firstName: $firstName, avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(covariant UserDetails other) {
    if (identical(this, other)) return true;

    return other.weight == weight &&
        other.gender == gender &&
        other.wakeUpTime == wakeUpTime &&
        other.sleepTime == sleepTime &&
        other.lastName == lastName &&
        other.firstName == firstName &&
        other.avatarPath == avatarPath;
  }

  @override
  int get hashCode {
    return weight.hashCode ^
        gender.hashCode ^
        wakeUpTime.hashCode ^
        sleepTime.hashCode ^
        lastName.hashCode ^
        firstName.hashCode ^
        avatarPath.hashCode;
  }
}


//  int glass = 0;
//   DateTime timeAwake = DateTime.now();
//   DateTime timeAsleep = DateTime.now();
//   List<DateTime> intervelList = [];
//   //<------------------>

// //test fun() to store DB.
//   Future<void> store() async {
//     await Future.delayed(const Duration(seconds: 3));
//     print('<------Successfully stored to DB------->');
//   }

//   //function for calculating number of glass to drink.
//   int calculateNumberOfGlasses() {
//     double lbs = weight * 2.204623;
//     int ounce = lbs ~/ 2;
//     glass = ounce ~/ 8;
//     return glass;
//   }

// //to create a list of DateTime Objects.
//   void createNotificationList() {
//     timeAwake = sleepTym.subtract(Duration(hours: wakeUpTym.hour));
//     timeAsleep = DateTime(timeAsleep.year, timeAsleep.month, timeAsleep.day,
//         24 - timeAwake.hour, 0, 0);
//     DateTime intervel = DateTime(timeAwake.year, timeAwake.month, timeAwake.day,
//         timeAwake.hour ~/ glass, timeAwake.minute, timeAwake.second);
//     intervelList = List.generate(glass, (index) {
//       return wakeUpTym.add(Duration(hours: intervel.hour * index));
//     });
//   