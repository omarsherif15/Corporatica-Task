import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Features/Cart/Widgets/cart_bloc_builder.dart';
import 'package:corporatica_task/Features/Cart/data/Model/cart_model.dart';
import 'package:corporatica_task/Features/Cart/Widgets/cart_widget.dart';
import 'package:flutter/material.dart';

/// {@template cart_screen}
/// CartScreen widget.
/// {@endtemplate}
class CartScreen extends StatelessWidget {
  /// {@macro cart_screen}
  const CartScreen({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
        ),
        body: const CartBlocBuilder(),
      );
}
