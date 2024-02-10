import 'package:flutter/material.dart';
import 'package:nursery/features/activities/presentation/view/widgets/actitivities_grid_view_item.dart';

class ActivitiesGridView extends StatelessWidget {
  const ActivitiesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> itemNames = [
      'Food',
      'Classes',
      'Medical',
      'Nap',
      'Bottle',
      'Mood',
      'Potty',
      'Diaper',
      'Homework',
      'Quiz',
    ];
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(
            10,
            (index) => ActivitiesGridViewItem(
                  text: itemNames[index],
                  index: index,
                )),
      ),
    );
  }
}
