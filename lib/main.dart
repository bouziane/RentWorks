import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

import 'di.dart';

void main() async {
  await init();
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter router = getIt<GoRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.blue, // Couleur de l'icône sélectionnée
          unselectedItemColor:
              Colors.grey.shade800, // Couleur de l'icône non sélectionnée
        ),
      ),
      routerConfig: router,
    );
  }
}
