import 'package:bloc/bloc.dart';
import 'package:e_learning/core/bloc_observer/bloc_observer.dart';
import 'package:e_learning/core/utils/app_router.dart';
import 'package:e_learning/core/utils/cache_helper.dart';
import 'package:e_learning/core/utils/const.dart';
import 'package:e_learning/core/utils/dio_helper.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();
  token = CacheHelper.getData(key: 'token');
  debugPrint('token : $token');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffffffff),
        fontFamily: 'Outfit',
      ),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
