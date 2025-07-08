import 'package:go_router/go_router.dart';
import '../../features/home/ui/home_screen.dart';

import '../../features/splash/ui/splash_screen.dart';
abstract class AppRouter {
  static const KHomeView = '/home';
 static final router = GoRouter(
      routes: [
        GoRoute(
          path: '/', builder: (context, state) => SplashScreen(),

        ),
        GoRoute(path: KHomeView, builder: (context, state) => const HomeScreen()),
      ]
  );
}