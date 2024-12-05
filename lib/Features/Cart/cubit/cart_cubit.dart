import 'package:bloc/bloc.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_state.dart';
import 'package:corporatica_task/Features/Cart/data/Model/cart_model.dart';
import 'package:corporatica_task/Features/Cart/data/repos/cart_repo.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:flutter/material.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;
  CartCubit(this._cartRepo) : super(const CartState.initial());

  Future<void> fetchCartData() async {
    emit(const CartState.getCartloading());
    try {
      List<CartModel> cartList = await _cartRepo.fetchCartData();
      emit(CartState.getCartSuccess(cartList));
    } catch (e) {
      debugPrint(e.toString());
      emit(CartState.getCartError(error: e.toString()));
    }
  }

  Future<void> cartItemIncrement(CartModel cartModel) async {
    try {
      await _cartRepo.cartItemIncrement(cartModel);
      fetchCartData();
    } catch (e) {
      debugPrint(e.toString());
      emit(CartState.getCartError(error: e.toString()));
    }
  }

  Future<void> cartItemDecrement(CartModel cartModel) async {
    try {
      await _cartRepo.cartItemDecrement(cartModel);
      fetchCartData();
    } catch (e) {
      debugPrint(e.toString());
      emit(CartState.getCartError(error: e.toString()));
    }
  }

  Future<void> addToCart({required ProductModel productModel}) async {
    emit(const CartState.getCartloading());
    try {
      await _cartRepo.addToCart(productModel: productModel);
      fetchCartData();
    } catch (e) {
      debugPrint(e.toString());
      emit(CartState.getCartError(error: e.toString()));
    }
  }

  Future<void> removeFromCart({required CartModel cartModel}) async {
    emit(const CartState.getCartloading());
    try {
      await _cartRepo.removeFromCart(cartModel: cartModel);
      fetchCartData();
    } catch (e) {
      debugPrint(e.toString());
      emit(CartState.getCartError(error: e.toString()));
    }
  }

   bool isInCart({required int productId}) {
    return _cartRepo.isInCart(productId: productId);
    
  }
}
