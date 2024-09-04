import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'core/utils/api_services.dart';
import 'core/utils/app_routers.dart';
import 'core/utils/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'E-Learning',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.routers,
    );
  }
}
