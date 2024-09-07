import 'package:e_learning/core/utils/app_router.dart';
import 'package:e_learning/core/utils/cache_helper.dart';
import 'package:go_router/go_router.dart';

void submit(context) {
  CacheHelper.saveData(
    key: 'onboarding',
    value: true,
  ).then((value) {
    if (value) {
      GoRouter.of(context).push(AppRouter.kSignInView);
    }
  });
}