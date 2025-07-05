import 'package:bookly_app/features/splash/ui/widgets/splash_screen_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SplashScreenView());
  }
}
