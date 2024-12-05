import 'package:corporatica_task/Features/Cart/Widgets/cart_list_view.dart';
import 'package:corporatica_task/Features/Cart/Widgets/empty_cart.dart';
import 'package:corporatica_task/Features/Cart/Widgets/loading_cart_list.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBlocBuilder extends StatelessWidget {
  /// {@macro cart_bloc_builder}
  const CartBlocBuilder({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CartCubit, CartState>(builder: (context, state) {
        return state.maybeWhen(
            getCartloading: () {
              return const LoadingCartList();
            },
            getCartSuccess: (cartList) {
              if (cartList.isEmpty) return const EmptyCart();
              return CartListView(
                cartList: cartList,
              );
            },
            getCartError: (errorHandler) => const SizedBox.shrink(),
            orElse: () {
              return const SizedBox.shrink();
            });
      });
}
