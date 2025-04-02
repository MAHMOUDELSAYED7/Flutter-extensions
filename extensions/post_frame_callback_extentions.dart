import 'package:flutter/material.dart';

extension PostFrameCallbackExtension on BuildContext {
  void addPostFrameCallback(VoidCallback callback) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      callback();
    });
  }

  void addPostFrameCallbackWithDelay(VoidCallback callback, Duration delay) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(delay, callback);
    });
  }
}
