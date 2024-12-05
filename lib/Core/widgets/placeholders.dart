import 'package:flutter/material.dart';

class BannerPlaceholder extends StatelessWidget {
  const BannerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100.0,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
    );
  }
}

class TitlePlaceholder extends StatelessWidget {
  const TitlePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 12.0,
      margin: const EdgeInsets.all(5.0),
      color: Colors.white,
    );
  }
}

class OrderCardPlaceholder extends StatelessWidget {
  const OrderCardPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.green,
        ),
        height: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width / 3,
              height: 12.0,
              color: Colors.white,
            ),
            const SizedBox(height: 8.0),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 12.0,
              color: Colors.white,
            ),
            const SizedBox(height: 8.0),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 12.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class TitleWithCircleAvatarPlaceholder extends StatelessWidget {
  const TitleWithCircleAvatarPlaceholder(
      {super.key, required this.radius, required this.titleWidth});

  final double radius;
  final double titleWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(
            radius: radius,
            backgroundColor: Colors.white,
          ),
          const SizedBox(height: 8.0),
          Container(
            width: titleWidth,
            height: 10.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class TitleWithImageAndDescriptionPlaceholder extends StatelessWidget {
  const TitleWithImageAndDescriptionPlaceholder({
    super.key,
    required this.imageHeight,
  });

  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: imageHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12.0),
          Container(
            width: 150 / 2,
            height: 10.0,
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 8.0),
          ),
          Container(
            width: 150,
            height: 10.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
