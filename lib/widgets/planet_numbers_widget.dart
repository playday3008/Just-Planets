import 'package:flutter/material.dart';

import '../widgets/planet_text_widget.dart';

class PlanetNumber extends StatelessWidget {
  const PlanetNumber({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
    this.color,
  });

  final String title;
  final String text;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          PlanetText(
              text: '$title: ',
              fontSize: 14,
          ),
          PlanetText(
            text: text,
            fontSize: 14,
            color: color ?? Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
