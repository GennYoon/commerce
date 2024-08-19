import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'presentation/pages/home/home_page.dart';
import 'presentation/pages/splash/splash_page.dart';
import 'presentation/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
    // return const MaterialApp(
    //   home: Scaffold(
    //     body: Center(
    //       child: Text('Hello World!'),
    //     ),
    //   ),
    // );
  }
}
