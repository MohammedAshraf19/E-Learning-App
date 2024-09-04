import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouters
{
  static const onBoardingView = '/OnBoardingView';

  static final routers = GoRouter
    (
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: onBoardingView,
        builder: (context, state) {
          return const OnBoardingView();
        },
      ),
    ],

  );
}