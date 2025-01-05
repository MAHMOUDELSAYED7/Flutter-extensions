//! SCREEN EXTENSIONS
import 'package:flutter/material.dart';

extension MediaQueryExtensions on BuildContext {
  // Get the screen height
  double get height => MediaQuery.sizeOf(this).height;

  // Get the screen width
  double get width => MediaQuery.sizeOf(this).width;

  // Get the device's pixel ratio
  double get pixelRatio => MediaQuery.devicePixelRatioOf(this);

  // Get the screen orientation
  Orientation get orientation => MediaQuery.orientationOf(this);

  // Check if the device is in landscape mode
  bool get isLandscape => orientation == Orientation.landscape;

  // Check if the device is in portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  // Get the screen's aspect ratio
  double get aspectRatio => MediaQuery.sizeOf(this).aspectRatio;

  // Get the padding at the top (e.g., status bar)
  double get paddingTop => MediaQuery.paddingOf(this).top;

  // Get the padding at the bottom (e.g., for devices with gesture navigation)
  double get paddingBottom => MediaQuery.paddingOf(this).bottom;

  // Get the padding on the left
  double get paddingLeft => MediaQuery.paddingOf(this).left;

  // Get the padding on the right
  double get paddingRight => MediaQuery.paddingOf(this).right;

  // Get the available height, excluding system status bar and bottom inset
  double get usableHeight => height - paddingTop - paddingBottom;

  // Get the available width, excluding left and right padding
  double get usableWidth => width - paddingLeft - paddingRight;

  // Check if the device has a notch
  bool get hasNotch => paddingTop > 20;

  // Get the system's text scaling factor using the new method
  TextScaler get textScaleFactor => MediaQuery.textScalerOf(this);

  // Get the bottom inset (e.g., keyboard height)
  double get viewInsetsBottom => MediaQuery.viewInsetsOf(this).bottom;

  // Check if the keyboard is visible
  bool get isKeyboardVisible => viewInsetsBottom > 0;
}
