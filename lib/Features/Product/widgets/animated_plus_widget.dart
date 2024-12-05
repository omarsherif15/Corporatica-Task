import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_state.dart';
import 'package:corporatica_task/Features/Cart/data/Model/cart_model.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

class AnimatedPlusIcon extends StatefulWidget {
  const AnimatedPlusIcon({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  _AnimatedPlusIconState createState() => _AnimatedPlusIconState();
}

class _AnimatedPlusIconState extends State<AnimatedPlusIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  double width = 40;
  CartModel? cartModel;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
        duration: const Duration(milliseconds: 25),
        vsync: this,
        animationBehavior: AnimationBehavior.preserve);
    _controller.addListener(() {
      setState(() {
        if (_controller.value <= 0.1) {
          width = 40;
        } else if (_controller.value <= 1) {
          width = 100;
        }
      });
    });
    if (Hive.box('Cart').containsKey('${widget.productModel.id}')) {
      _controller.animateTo(1);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        cartModel = Hive.box('Cart').get('${widget.productModel.id}');
        return GestureDetector(
          onTap: () async {
            await context
                .read<CartCubit>()
                .addToCart(productModel: widget.productModel);
            _controller.animateTo(1);
          },
          child: ScaleTransition(
            scale: Tween(begin: 1.0, end: 1.0).animate(_controller),
            alignment: Alignment.bottomRight,
            child: AnimatedContainer(
              alignment: AlignmentDirectional.center,
              duration: const Duration(milliseconds: 250),
              width: width,
              height: 40,
              decoration: BoxDecoration(
                color: _controller.isForwardOrCompleted
                    ? Colors.grey[100]
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_controller.isForwardOrCompleted)
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (cartModel!.quantity! > 1) {
                              context
                                  .read<CartCubit>()
                                  .cartItemDecrement(cartModel!);
                            }
                            if (cartModel!.quantity == 1) {
                              context
                                  .read<CartCubit>()
                                  .removeFromCart(cartModel: cartModel!);
                              _controller.reset();
                            }
                          },
                          child: const CircleAvatar(
                            radius: 15,
                            backgroundColor: ColorsManager.mainPurple,
                            child: Icon(Icons.remove, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            cartModel!.quantity.toString(),
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  const CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorsManager.mainPurple,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
