import 'package:drink/domain/Entities/StatEntity/stat_entity.dart';
import 'package:flutter/material.dart';

List<Color> getContainerColors(context) => [
      Theme.of(context).colorScheme.tertiary,
      Theme.of(context).colorScheme.primary,
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.primaryContainer,
    ];

List<Color> getTextColors(context) => [
      Theme.of(context).colorScheme.onTertiary,
      Theme.of(context).colorScheme.onPrimary,
      Theme.of(context).colorScheme.onSecondary,
      Theme.of(context).colorScheme.onPrimaryContainer,
    ];

List<Statentity> stat = [
  Statentity(title: 'Weight', value: '80'),
  Statentity(title: 'Glasses', value: '8'),
  Statentity(title: 'Awake Time', value: '12h'),
  Statentity(title: 'Sleep Time', value: '8h'),
];
