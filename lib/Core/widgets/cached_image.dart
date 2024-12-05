import 'package:cached_network_image/cached_network_image.dart';
import 'package:corporatica_task/main.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage(
      {super.key,
      required this.imageUrl,
      required this.height,
      required this.width // ignore: unused_element
      });

  final String imageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      cacheManager: MyApp.customCacheManager,
      imageUrl: imageUrl,
      alignment: Alignment.topCenter,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      progressIndicatorBuilder: (context, url, progress) => Center(
        child: CircularProgressIndicator.adaptive(
          //backgroundColor: primaryColor,
          value: progress.progress,
        ),
      ),
      fit: BoxFit.cover,
      height: height,
      width: width,
    );
  }
}
