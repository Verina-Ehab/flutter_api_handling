import 'package:flutter/material.dart';

import '../constants/sizes.dart';

class CustomLayout extends StatelessWidget {
  final String? firstString;
  final String? secString;
  final Widget? widget;
  const CustomLayout(
      {super.key, this.firstString, this.secString, this.widget});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: layoutPadding,
          child: Column(
            children: [
              const Column(
                children: [],
              ),
              widget ?? const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
