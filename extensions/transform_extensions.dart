//! TRANSFORM EXTENSIONS
import 'package:flutter/material.dart';

extension TransformExtensions on Widget {
  // Rotate a widget by a given angle (in radians)
  Widget rotate(double angle) => Transform.rotate(
        angle: angle,
        child: this,
      );

  // Scale a widget by a given factor
  Widget scale(double scale) => Transform.scale(
        scale: scale,
        child: this,
      );

  // Translate a widget by given offsets
  Widget translate({double dx = 0.0, double dy = 0.0}) => Transform.translate(
        offset: Offset(dx, dy),
        child: this,
      );
}
