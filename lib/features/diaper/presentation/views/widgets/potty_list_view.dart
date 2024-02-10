import 'package:flutter/material.dart';

import '../../../../../core/utils/media_query.dart';
import 'container_items.dart';

class PottyListView extends StatelessWidget {
  const PottyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final h = SizeApp(context).height;
    final w = SizeApp(context).width;
    return ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ContainerItems(
                items: [
                  'Time: 10:30 min',
                  'Duration: 05:30 min',
                ],
              ),
              const SizedBoxApp(
                h: .025,
              ),
              Image.network(
                'https://th.bing.com/th/id/OIP.1Zg4V7WWy_z2hUQxRszlgwHaGH?w=223&h=189&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                width: double.infinity,
                fit: BoxFit.cover,
                height: h * .2,
              ),
            if(index!=2)  Padding(
                padding: EdgeInsets.only(
                  top: h * .01,
                  bottom: h * .01,
                  left: w * .08,
                ),
                child: Container(
                  width: 1,
                  height: h * .05,
                  color: const Color(0xFFE5E1E5),
                ),
              ),
            ],
          );
        },
        itemCount: 3);
  }
}
