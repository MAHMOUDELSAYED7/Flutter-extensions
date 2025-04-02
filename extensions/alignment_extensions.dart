//! ALIGNMENT EXTENSIONS
import 'package:flutter/material.dart';

extension AlignmentExtensions on Widget {
  // Center a widget
  Widget center() => Center(child: this);

  // Align a widget to a specific alignment
  Widget aligned(Alignment alignment) =>
      Align(alignment: alignment, child: this);

  // Align a widget to the top left
  Widget alignTopLeft() => Align(alignment: Alignment.topLeft, child: this);

  // Align a widget to the top right
  Widget alignTopRight() => Align(alignment: Alignment.topRight, child: this);

  // Align a widget to the bottom left
  Widget alignBottomLeft() =>
      Align(alignment: Alignment.bottomLeft, child: this);

  // Align a widget to the bottom right
  Widget alignBottomRight() =>
      Align(alignment: Alignment.bottomRight, child: this);

  // Align a widget to the center left
  Widget alignCenterLeft() =>
      Align(alignment: Alignment.centerLeft, child: this);
  // Align a widget to the center right
  Widget alignCenterRight() =>
      Align(alignment: Alignment.centerRight, child: this);
}
