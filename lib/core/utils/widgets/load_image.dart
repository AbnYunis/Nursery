import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nursery/core/utils/media_query.dart';

class LoadImage extends StatelessWidget {
  const LoadImage({
    super.key,
    required this.w,
    required this.h,
    required this.image,
  });

  final double w;
  final double h;
  final String image;

  @override
  Widget build(BuildContext context) {
    final height = SizeApp(context).height;
    final width = SizeApp(context).width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(width * .013),
      child: SizedBox(
        height: height * h,
        width: width * w,
        child: InteractiveViewer(
          child: CachedNetworkImage(
            placeholder: (context, url) => Container(),
            fit: BoxFit.cover,
            imageUrl: image,
            errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
          ),
        ),
      ),
    );
  }
}
