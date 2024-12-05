import 'package:corporatica_task/Features/Cart/Widgets/cart_widget.dart';
import 'package:corporatica_task/Features/Cart/data/Model/cart_model.dart';
import 'package:flutter/widgets.dart';

/// {@template cart_list_view}
/// CartListView widget.
/// {@endtemplate}
class CartListView extends StatelessWidget {
  /// {@macro cart_list_view}
  const CartListView({
    super.key, // ignore: unused_element

    required this.cartList,
  });
  final List<CartModel> cartList;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.63,
        child: ListView.separated(
            itemBuilder: (context, index) =>
                CartWidget(cartModel: cartList[index]),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: cartList.length),
      );
}
