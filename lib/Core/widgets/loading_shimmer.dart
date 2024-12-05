import 'package:corporatica_task/Core/widgets/placeholders.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer(
      {super.key, required this.loadingStyle, this.width = 130});

  final LoadingType loadingStyle;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (loadingStyle == LoadingType.banner) const BannerPlaceholder(),
            if (loadingStyle == LoadingType.title) const TitlePlaceholder(),
            if (loadingStyle == LoadingType.titleWithCircleAvatar)
              const TitleWithCircleAvatarPlaceholder(
                radius: 45,
                titleWidth: 100,
              ),
            if (loadingStyle == LoadingType.titleWithDescription)
              const OrderCardPlaceholder(),
            if (loadingStyle == LoadingType.titleWithDescriptionAndImage)
              const TitleWithImageAndDescriptionPlaceholder(
                imageHeight: 200,
              )
          ],
        ));
  }
}

enum LoadingType {
  banner,
  title,
  titleWithCircleAvatar,
  titleWithDescription,
  titleWithDescriptionAndImage
}
