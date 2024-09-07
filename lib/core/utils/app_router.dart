import 'package:e_learning/feature/auth/forget_password/presentation/view/forget_password_view.dart';
import 'package:e_learning/feature/auth/forget_password/presentation/view/reset_view.dart';
import 'package:e_learning/feature/auth/forget_password/presentation/view/verify_view.dart';
import 'package:e_learning/feature/auth/sign_in/presentation/view/sign_in_view.dart';
import 'package:e_learning/feature/auth/sign_up/presentation/view/sign_up_view.dart';
import 'package:e_learning/feature/on_board/presentation/view/onboarding_view.dart';
import 'package:e_learning/feature/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnboardingView = '/OnboardingView';
  static const kSignInView = '/SignInView';
  static const kSignUpView = '/SignupView';
  static const kForgetPasswordView = '/ForgetPasswordView';
  static const kVerifyView = '/VerifyView';
  static const kResetView = '/ResetView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/OnboardingView',
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingView();
        },
      ),
      GoRoute(
        path: '/SignInView',
        builder: (BuildContext context, GoRouterState state) {
          return const SignInView();
        },
      ),
      GoRoute(
        path: '/SignupView',
        builder: (BuildContext context, GoRouterState state) {
          return const SignupView();
        },
      ),
      GoRoute(
        path: '/ForGetPasswordView',
        builder: (BuildContext context, GoRouterState state) {
          return const ForGetPasswordView();
        },
      ),
      GoRoute(
        path: '/VerifyView',
        builder: (BuildContext context, GoRouterState state) {
          return const VerifyView();
        },
      ),
      GoRoute(
        path: '/ResetView',
        builder: (BuildContext context, GoRouterState state) {
          return const ResetView();
        },
      ),
    ],
  );
}
