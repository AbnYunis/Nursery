import 'package:flutter/material.dart';
import 'package:nursery/features/setting/presentation/view/widgets/setting_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SettingBody(),
    ));
  }
}
