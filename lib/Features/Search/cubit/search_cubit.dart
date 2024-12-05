import 'package:bloc/bloc.dart';
import 'package:corporatica_task/Core/helpers/constants.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Search/cubit/search_state.dart';
import 'package:flutter/material.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());

  void search(String query) {
    emit(const SearchState.loading());
    List<ProductModel> searchedproducts = [];
    debugPrint('Searching for:$query');
    debugPrint('Products Length:${productsList.length}');
    try {
      for (ProductModel product in productsList) {
        if (product.title!.toLowerCase().contains(query.toLowerCase())) {
          searchedproducts.add(product);
        } else {
          continue;
        }
      }
      emit(SearchState.success(searchedproducts));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
