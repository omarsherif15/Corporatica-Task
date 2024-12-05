import 'package:corporatica_task/Core/helpers/extensions.dart';
import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Core/widgets/cached_image.dart';
import 'package:corporatica_task/Core/widgets/my_text.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:flutter/material.dart';

class HorizontalProduct extends StatelessWidget {
  const HorizontalProduct({super.key, required this.productModel});

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.productDetails, arguments: productModel);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          CachedImage(
            imageUrl: productModel.image!,
            height: 60,
            width: 60,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              flex: 4,
              child: Text(
                productModel.title!,
                style: const TextStyle(fontSize: 15),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )),
          const Spacer(),
          CustomizedText(
            text: '\$${productModel.price}',
            color: ColorsManager.mainPurple,
          )
        ]),
      ),
    );
  }
}
