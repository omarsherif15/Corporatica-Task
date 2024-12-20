import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';


@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  const factory CartState.getCartloading() = GetCartLoading;
  const factory CartState.getCartSuccess(data) = GetCartSuccess;
  const factory CartState.getCartError({required String error}) = GetCartError;
}
