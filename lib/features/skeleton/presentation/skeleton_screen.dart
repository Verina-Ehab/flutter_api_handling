import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_handling/core/constants/colors.dart';
import 'package:flutter_api_handling/features/api_testing/presentation/screens/home_bloc.dart';

import '../../api_testing/presentation/screens/home_provider.dart';

class SkeletonScreen extends StatefulWidget {
  const SkeletonScreen({super.key});

  @override
  State<SkeletonScreen> createState() => _SkeletonScreenState();
}

class _SkeletonScreenState extends State<SkeletonScreen> {
  int currentIndex = 1;

  final List<Widget> screens = const [
    HomeBloc(),
    Center(child: Text('Home Screen')),
    HomeProvider(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsManager.primary,
          centerTitle: true,
          title: const Text('APIs Practice'),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: CircleNavBar(
          activeIcons: const [
            Icon(Icons.favorite, color: ColorsManager.white),
            Icon(Icons.home, color: ColorsManager.white),
            Icon(Icons.favorite, color: ColorsManager.white),
          ],
          inactiveIcons: const [
            Text("Bloc"),
            Text("Home"),
            Text("Provider"),
          ],
          color: Colors.white,
          circleColor: Colors.white,
          height: 60,
          circleWidth: 60,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
          cornerRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(24),
            bottomLeft: Radius.circular(24),
          ),
          shadowColor: Colors.deepPurple,
          circleShadowColor: Colors.deepPurple,
          elevation: 10,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.red],
          ),
          circleGradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.red],
          ),
          activeIndex: currentIndex,
        ));
  }
}
