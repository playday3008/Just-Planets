import 'package:flutter/material.dart';

class PlanetText extends StatelessWidget {
  const PlanetText({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.align,
    this.shadows,
  });

  final String text;
  final double? fontSize;
  final Color? color;
  final TextAlign? align;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
        child: Text(text,
            textAlign: align ?? TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: fontSize,
              color: color ?? Colors.white,
              shadows: shadows,
            )
        )
    );
  }
}
