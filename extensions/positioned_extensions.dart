//! POSITIONED EXTENSIONS
import 'package:flutter/widgets.dart';

extension PositionedExtensions on Widget {
  // Positions the widget at the bottom left of a Stack.
  Widget withPosition({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) => Positioned(
    left: left,
    top: top,
    right: right,
    bottom: bottom,
    child: this,
  );
  // Positions the widget at the top left of a Stack.
  Widget positionedTopLeft({double left = 0.0, double top = 0.0}) =>
      Positioned(left: left, top: top, child: this);

  // Positions the widget at the top right of a Stack.
  Widget positionedTopRight({double right = 0.0, double top = 0.0}) =>
      Positioned(right: right, top: top, child: this);

  // Positions the widget at the bottom left of a Stack.
  Widget positionedBottomLeft({double left = 0.0, double bottom = 0.0}) =>
      Positioned(left: left, bottom: bottom, child: this);

  // Positions the widget at the bottom right of a Stack.
  Widget positionedBottomRight({double right = 0.0, double bottom = 0.0}) =>
      Positioned(right: right, bottom: bottom, child: this);

  // Positions the widget at the center right of a Stack.
  Widget positionedRight({double right = 0.0}) =>
      Positioned(right: right, top: 0.0, bottom: 0.0, child: this);

  // Positions the widget at the center left of a Stack.
  Widget positionedLeft({double left = 0.0}) =>
      Positioned(left: left, top: 0.0, bottom: 0.0, child: this);

  // Positions the widget at the top center of a Stack.
  Widget positionedTop({double top = 0.0}) =>
      Positioned(left: 0.0, right: 0.0, top: top, child: this);

  // Positions the widget at the bottom center of a Stack.
  Widget positionedBottom({double bottom = 0.0}) =>
      Positioned(left: 0.0, right: 0.0, bottom: bottom, child: this);
}
