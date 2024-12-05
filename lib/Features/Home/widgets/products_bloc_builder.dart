import 'package:corporatica_task/Features/Home/cubit/home_cubit.dart';
import 'package:corporatica_task/Features/Home/cubit/home_state.dart';
import 'package:corporatica_task/Features/Home/widgets/loading_product_grid.dart';
import 'package:corporatica_task/Features/Home/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
            loading: () {
              return setupLoading();
            },
            success: (productList) {
              return setupSuccess(productList);
            },
            error: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return const LoadingProductGrid();
  }

  Widget setupSuccess(productsList) {
    return ProductGrid(
      productsList: productsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
