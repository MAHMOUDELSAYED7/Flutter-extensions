//! CUBIT EXTENSION
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension CubitExtensions on BuildContext {
  T cubit<T extends Cubit<Object>>() => BlocProvider.of<T>(this);
}

extension BlocExtensions on BuildContext {
  T bloc<T extends Cubit<Object>>() => BlocProvider.of<T>(this);
}
