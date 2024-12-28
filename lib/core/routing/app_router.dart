import 'package:flutter/material.dart';
import 'package:flutter_api_handling/features/api_testing/presentation/screens/home_bloc.dart';
import 'package:flutter_api_handling/features/skeleton/presentation/skeleton_screen.dart';

import '../../features/api_testing/presentation/screens/home_provider.dart';
import 'routes.dart';

// to use it "context.pushNamed(Routes.loginScreen);"
class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.skeletonScreen:
        return MaterialPageRoute(
          builder: (_) => const SkeletonScreen(),
        );
      case Routes.homeProvider:
        return MaterialPageRoute(
          builder: (_) => const HomeProvider(),
        );
      case Routes.homeBloc:
        return MaterialPageRoute(
          builder: (_) => const HomeBloc(),
        );
      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );
      default:
        return null;
    }
  }
}
