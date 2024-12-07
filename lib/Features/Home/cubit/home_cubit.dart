import 'package:bloc/bloc.dart';
import 'package:corporatica_task/Core/helpers/constants.dart';
import 'package:corporatica_task/Core/networking/api_error_handler.dart';
import 'package:corporatica_task/Features/Home/cubit/home_state.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  Future<void> getProductsList() async {
    emit(const HomeState.loading());
    final response = await _homeRepo.fetchAllProducts();
    response.when(
      success: (products) {
        productsList = products;
        emit(HomeState.success(products));
      },
      failure: (errorHandler) {
        emit(HomeState.error(
            error: ErrorHandler.handle(errorHandler).toString()));
      },
    );
  }
}
