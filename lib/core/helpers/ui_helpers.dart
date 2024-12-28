import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

SizedBox verticalSpacing({double? height}) => SizedBox(
      height: height?.h ?? 15.h,
    );
SizedBox horizontalSpacing({double? width}) => SizedBox(
      width: width?.w ?? 15.w,
    );



Size screenSize(BuildContext context) => MediaQuery.of(context).size;
double screenHieght(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
