
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.loading() = _Loading;

  const factory SearchState.success(List<ProductModel> cartList) = _Success;

  const factory SearchState.failure() = _Failure;
}
