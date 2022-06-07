import 'package:go_router/go_router.dart';
import 'package:weather/features/splash/presentation/pages/splash_page.dart';

class Router {
  static const splash = 'splash';
  static const auth = 'auth';
}

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: Router.splash,
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    // GoRoute(name: Router.auth, path: '/auth'),
  ],
);
