import 'package:go_router/go_router.dart';
import 'package:weather/features/splash/presentation/pages/splash_page.dart';
import 'package:weather/features/weather/presentation/pages/weather_page.dart';

class AppRouter {
  static const splash = 'splash';
  static const weather = 'weather';
}

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: AppRouter.splash,
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      name: AppRouter.weather,
      path: '/${AppRouter.weather}',
      builder: (context, state) => const WeatherPage(),
    ),
  ],
);
