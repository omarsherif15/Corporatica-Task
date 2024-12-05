import 'package:corporatica_task/Core/helpers/extensions.dart';
import 'package:corporatica_task/Core/helpers/spacing.dart';
import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Core/widgets/cached_image.dart';
import 'package:corporatica_task/Core/widgets/my_text.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Product/widgets/animated_plus_widget.dart';
import 'package:flutter/material.dart';

class ProductWidgetBuilder extends StatelessWidget {
  const ProductWidgetBuilder({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      padding: const EdgeInsetsDirectional.only(start: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: InkWell(
        onTap: () {
          context.pushNamed(Routes.productDetails, arguments: productModel);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedImage(
                    imageUrl: productModel.image!,
                    width: 150,
                    height: 200,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(bottom: 8.0, start: 8),
                  child: AnimatedPlusIcon(productModel: productModel),
                )
              ],
            ),
            CustomizedText(
              text: productModel.title!,
              color: Colors.grey.shade700,
            ),
            Row(
              children: [
                CustomizedText(
                  text: '${productModel.price}',
                  weight: FontWeight.bold,
                  color: ColorsManager.mainPurple,
                ),
                horizontalSpace(5),
                const CustomizedText(
                  text: 'EGP',
                  weight: FontWeight.normal,
                  color: Colors.grey,
                  size: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
