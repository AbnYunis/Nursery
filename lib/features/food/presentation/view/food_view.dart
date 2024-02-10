import 'package:flutter/material.dart';
import 'package:nursery/features/food/presentation/view/widgets/food_body.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FoodBody(),
      ),
    );
  }
}
