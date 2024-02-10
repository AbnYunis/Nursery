import 'package:flutter/material.dart';
import 'package:nursery/features/gallery/presentation/views/widgets/gallery_body.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: GalleryBody(),
      ),
    );
  }
}
