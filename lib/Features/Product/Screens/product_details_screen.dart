import 'package:corporatica_task/Core/helpers/spacing.dart';
import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Core/theming/styles.dart';
import 'package:corporatica_task/Core/widgets/app_text_button.dart';
import 'package:corporatica_task/Core/widgets/cached_image.dart';
import 'package:corporatica_task/Core/widgets/my_text.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_state.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Home/widgets/cart_icon_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key, // ignore: unused_element
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) => Scaffold(
        // extendBodyBehindAppBar: true,
        // extendBody: true,
        appBar: AppBar(
          // shadowColor: Colors.white,
          // surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          actions: const [CartIconBuilder()],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                CachedImage(
                  imageUrl: productModel.image!,
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.50,
                ),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomizedText(
                            text: productModel.category!,
                            color: ColorsManager.mainPurple,
                            size: 15,
                            weight: FontWeight.bold,
                          ),
                          verticalSpace(5),
                          Row(
                            children: [
                              Expanded(
                                child: CustomizedText(
                                  text: productModel.title!,
                                  color: Colors.black,
                                  size: 20,
                                  weight: FontWeight.bold,
                                ),
                              ),
                              CustomizedText(
                                text: '\$${productModel.price!}',
                                color: ColorsManager.mainPurple,
                                size: 20,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                          verticalSpace(15),
                          const CustomizedText(
                            text: 'Description',
                            size: 20,
                            weight: FontWeight.bold,
                          ),
                          verticalSpace(10),
                          CustomizedText(
                            text: productModel.description!,
                            color: Colors.grey.shade500,
                          ),
                        ]))
              ])),
        ),
        floatingActionButton: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: AppTextButton(
                  buttonText: 'Add to cart',
                  textStyle: TextStyles.font24BlackBold.copyWith(
                    color: Colors.white,
                  ),
                  buttonHeight: 52,
                  onPressed: () {
                    context
                        .read<CartCubit>()
                        .addToCart(productModel: productModel);
                  }),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
}
