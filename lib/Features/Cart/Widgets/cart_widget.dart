import 'package:corporatica_task/Core/helpers/extensions.dart';
import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Cart/data/Model/cart_model.dart';
import 'package:corporatica_task/Features/Cart/Widgets/plus_minus_widget.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Home/widgets/cart_icon_builder.dart';
import 'package:corporatica_task/Features/Product/Screens/product_details_screen.dart';
import 'package:corporatica_task/Features/Product/widgets/product_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key, required this.cartModel});

  final CartModel cartModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          context.pushNamed(
            Routes.productDetails,
            arguments: ProductModel(
              title: cartModel.productName,
              description: cartModel.description,
              image: cartModel.productPhoto,
              price: cartModel.price,
              id: cartModel.id,
              category: cartModel.category,
            ) ,
          );
        },
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: NetworkImage('${cartModel.productPhoto}'),
                        height: 75,
                        width: 75,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          cartModel.productName!,
                          style: const TextStyle(fontSize: 15),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: 'EGP',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 10,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: (cartModel.price! *
                                              cartModel.quantity!)
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                  ]),
                            ),
                            const Spacer(),
                            PlusMinusCart(
                              count: cartModel.quantity,
                              removeIcon: cartModel.quantity == 1
                                  ? Icons.delete_outline
                                  : Icons.remove,
                              onTapMinus: () {
                                if (cartModel.quantity! > 1) {
                                  context
                                      .read<CartCubit>()
                                      .cartItemDecrement(cartModel);
                                } else {
                                  context
                                      .read<CartCubit>()
                                      .removeFromCart(cartModel: cartModel);
                                }
                              },
                              onTapPlus: () async {
                                context
                                    .read<CartCubit>()
                                    .cartItemIncrement(cartModel);
                              },
                            )
                          ]),
                    ]))));
  }
}
