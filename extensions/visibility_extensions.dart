//! VISIBILITY EXTENSIONS
import 'package:flutter/material.dart';

extension VisibilityExtensions on Widget {
  // Show or hide a widget based on a condition
  Widget visible(bool isVisible) => Visibility(
        visible: isVisible,
        child: this,
      );

  // Hide a widget while keeping its space
  Widget invisible() => Visibility(
        visible: false,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: this,
      );

  // Completely remove a widget from the layout
  Widget gone() => const SizedBox.shrink();
}
