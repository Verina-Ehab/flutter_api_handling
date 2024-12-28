import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator(
            color: ColorsManager.primary,
          ),
        ),
      ),
    );
  }
}
