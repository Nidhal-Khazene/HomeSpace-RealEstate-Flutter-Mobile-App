import 'package:flutter/material.dart';
import 'package:home_space/constants.dart';
import 'package:home_space/core/routing/on_generate_route.dart';
import 'package:home_space/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const HomeSpace());
}

class HomeSpace extends StatelessWidget {
  const HomeSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: kPrimaryFont,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: kPrimaryColorFont),
          bodyMedium: TextStyle(color: kPrimaryColorFont),
          bodySmall: TextStyle(color: kPrimaryColorFont),
        ),
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
