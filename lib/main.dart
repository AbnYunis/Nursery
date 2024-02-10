import 'package:flutter/material.dart';
import 'package:nursery/core/utils/app_router.dart';

void main() {
  runApp(const Nursery());
}

class Nursery extends StatelessWidget {
  const Nursery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
    //comment
  }
}
