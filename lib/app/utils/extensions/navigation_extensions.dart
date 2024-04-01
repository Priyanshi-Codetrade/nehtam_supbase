import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  Future<T?> pushNamed<T extends Object?>(String routeName, {Object? args}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: args);
  }

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(String routeName,
      {Object? args}) {
    return Navigator.of(this).pushNamedAndRemoveUntil<T>(
      routeName,
      (route) => false,
      arguments: args,
    );
  }

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
          String routeName,
          {TO? result,
          Object? args}) =>
      Navigator.of(this).pushReplacementNamed<T?, TO>(routeName,
          arguments: args, result: result);

  void pop<T extends Object?>({T? args}) => Navigator.of(this).pop<T?>(args);

  bool canPop() {
    final NavigatorState? navigator = Navigator.maybeOf(this);
    return navigator != null && navigator.canPop();
  }
}
