import 'package:corporatica_task/Core/helpers/extensions.dart';
import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartIconBuilder extends StatelessWidget {
  /// {@macro cart_icon_builder}
  const CartIconBuilder({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<CartCubit, CartState>(
        buildWhen: (previous, current) => current is GetCartSuccess,
        builder: (context, state) {
          return state.maybeWhen(
            getCartSuccess: (data) {
              return IconButton(
                icon: Badge(
                  isLabelVisible: data.isNotEmpty,
                  backgroundColor: ColorsManager.mainPurple,
                  label: Text('${data.length}'),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: ColorsManager.mainPurple,
                  ),
                ),
                onPressed: () {
                  context.pushNamed(Routes.cartScreen);
                },
              );
            },
            orElse: () {
              return IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: ColorsManager.mainPurple,
                ),
              );
            },
          );
        },
      );
}
