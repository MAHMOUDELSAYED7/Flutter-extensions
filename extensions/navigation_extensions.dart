//! NAVIGATION EXTENSION
import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {
  // Push a new page onto the stack
  void navigateTo(Widget page) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => page));

  // Push a named route onto the stack
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);

  // Replace the current route with a new one
  Future<T?> replaceWith<T, TO>(Widget page) => Navigator.of(this)
      .pushReplacement(MaterialPageRoute(builder: (_) => page));

  // Replace the current route with a named route
  Future<T?> replaceWithNamed<T, TO>(String routeName, {Object? arguments}) =>
      Navigator.of(this)
          .pushReplacementNamed<T, TO>(routeName, arguments: arguments);

  // Pop the current route off the stack
  void back() => Navigator.of(this).pop();

  // Pop until the predicate returns true
  void popUntil(RoutePredicate predicate) =>
      Navigator.of(this).popUntil(predicate);

  // Pop the current route and push a new route
  Future<T?> popAndPushNamed<T, TO>(String routeName, {Object? arguments}) =>
      Navigator.of(this)
          .popAndPushNamed<T, TO>(routeName, arguments: arguments);

  // Push a new route and remove all previous routes
  Future<T?> pushAndRemoveUntil<T>(Widget page, RoutePredicate predicate) =>
      Navigator.of(this).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => page), predicate);

  // Push a named route and remove all previous routes
  Future<T?> pushNamedAndRemoveUntil<T>(
          String routeName, RoutePredicate predicate, {Object? arguments}) =>
      Navigator.of(this).pushNamedAndRemoveUntil<T>(routeName, predicate,
          arguments: arguments);

  // Try to pop the route; returns true if successful, otherwise false
  Future<bool> maybePop() => Navigator.of(this).maybePop();

  // Replace the current route with a new route using a custom route
  Future<T?> replaceWithCustomRoute<T, TO>(Route<T> route) =>
      Navigator.of(this).pushReplacement(route);

  // Push a custom route onto the stack
  Future<T?> pushCustomRoute<T>(Route<T> route) =>
      Navigator.of(this).push(route);
}
