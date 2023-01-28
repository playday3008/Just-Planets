import 'package:flutter/material.dart';

class PlanetProp {
  final double? avgDistance;
  final double meanRadius;
  final double mass;
  final double eqGravity;
  final double? lengthOfYear;
  final double meanTemperature;

  PlanetProp({
    this.avgDistance,
    required this.meanRadius,
    required this.mass,
    required this.eqGravity,
    this.lengthOfYear,
    required this.meanTemperature,
  });
}

class PlanetInfo {
  final String name;
  final String headline;
  final String description;
  final Color? color;
  final String model;
  final String iosModel;
  final String image;
  final PlanetProp data;

  PlanetInfo({
    required this.name,
    required this.headline,
    required this.description,
    this.color,
    required this.model,
    required this.iosModel,
    required this.image,
    required this.data
  });
}
