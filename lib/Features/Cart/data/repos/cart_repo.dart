import 'package:corporatica_task/Features/Cart/data/Model/cart_model.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:toastification/toastification.dart';

class CartRepo {
  final Box _cartBox;

  CartRepo(this._cartBox);

  Future<List<CartModel>> fetchCartData() async {
    List<CartModel> cartList = [];
    for (var element in _cartBox.values) {
      cartList.add(element);
    }
    return cartList;
  }

  Future<void> addToCart({
    required ProductModel productModel,
  }) async {
    try {
      debugPrint('Adding to cart ${productModel.id}...');
      CartModel cartModel = CartModel(
        id: productModel.id,
        productName: productModel.title,
        productPhoto: productModel.image,
        quantity: 1,
        price: productModel.price,
        description: productModel.description,
        category: productModel.category,
      );
      if (_cartBox.containsKey('${productModel.id}') == false) {
        await _cartBox.put('${productModel.id}', cartModel);
        debugPrint('Adding to cart${productModel.id}...');
      } else {
        CartModel newCartModel = await _cartBox.get('${productModel.id}');
        cartItemIncrement(newCartModel);
      }
      Toastification().show(
        title: (const Text('Added to Cart Successfully')),
        type: ToastificationType.success,
        autoCloseDuration: const Duration(seconds: 10),
      );

      debugPrint('Hive Length: ${_cartBox.length}');
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> cartItemIncrement(CartModel cartModel) async {
    cartModel = CartModel(
      id: cartModel.id,
      productName: cartModel.productName,
      productPhoto: cartModel.productPhoto,
      quantity: cartModel.quantity! + 1,
      price: cartModel.price,
      description: cartModel.description,
      category: cartModel.category,
    );
    await _cartBox.put('${cartModel.id}', cartModel);
    debugPrint('Incrementing: ${cartModel.id}...');
  }

  Future<void> cartItemDecrement(CartModel cartModel) async {
    cartModel = CartModel(
        id: cartModel.id,
        productName: cartModel.productName,
        productPhoto: cartModel.productPhoto,
        quantity: cartModel.quantity! - 1,
        description: cartModel.description,
        category: cartModel.category,
        price: cartModel.price);
    if (_cartBox.containsKey('${cartModel.id}')) {
      await _cartBox.delete("${cartModel.id}").then((onValue) {
        debugPrint('DEEEEELEEETED');
      });
    }
    await _cartBox.put('${cartModel.id}', cartModel);
    debugPrint('Decreminting: ${cartModel.id}...');
  }

  Future<void> removeFromCart({required CartModel cartModel}) async {
    await _cartBox.delete("${cartModel.id}").then((onValue) {
      debugPrint('DEEEEELEEETED');
    });
  }

  bool isInCart({required int productId})  {
    if (_cartBox.containsKey('$productId')) {
      return true;
    } else {
      return false;
    }
  }
}
