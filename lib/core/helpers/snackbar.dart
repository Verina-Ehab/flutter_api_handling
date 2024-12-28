import 'package:flutter/material.dart';
import '../constants/colors.dart';

void showSuccessSnackBar(
    {required String message, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      backgroundColor: ColorsManager.green,
    ),
  );
}

void showErrorSnackBar(
    {required String message, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: Theme.of(context).textTheme.labelSmall,
      ),
      backgroundColor: ColorsManager.red,
    ),
  );
}
