//! GESTURE EXTENSIONS
import 'package:flutter/material.dart';

extension GestureExtensions on Widget {
  // Add an onTap handler to a widget
  Widget onTap(VoidCallback onTap) => GestureDetector(
        onTap: onTap,
        child: this,
      );

  // Add an onLongPress handler to a widget
  Widget onLongPress(VoidCallback onLongPress) => GestureDetector(
        onLongPress: onLongPress,
        child: this,
      );

  // Add onTap and onLongPress handlers to a widget
  Widget onTapAndLongPress({
    required VoidCallback onTap,
    required VoidCallback onLongPress,
  }) =>
      GestureDetector(
        onTap: onTap,
        onLongPress: onLongPress,
        child: this,
      );
}
