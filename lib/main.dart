import 'package:flutter/material.dart';
import 'package:home_space/core/helper/on_generate_route.dart';
import 'package:home_space/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const HomeSpace());
}

class HomeSpace extends StatelessWidget {
  const HomeSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
