import 'package:flutter/widgets.dart';
// to use it "context.pushNamed(Routes.loginScreen);"
extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }
  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }
  void pop() => Navigator.of(this).pop();
}


// to use it "'text'.isNullOrEmpty()"
extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}


// to use it "[].isNullOrEmpty()"
extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}