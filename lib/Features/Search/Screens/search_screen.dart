// ignore_for_file: must_be_immutable

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:corporatica_task/Core/theming/styles.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Product/widgets/horizontal_product.dart';
import 'package:corporatica_task/Features/Search/Widgets/empty_search_results.dart';
import 'package:corporatica_task/Features/Search/Widgets/search_bloc_builder.dart';
import 'package:corporatica_task/Features/Search/Widgets/search_feild.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  /// {@macro search_screen}
  SearchScreen({
    super.key, // ignore: unused_element
  });

  TextEditingController searchController = TextEditingController();

  List<ProductModel> searchProductList = [];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: SearchField(
          searchController: searchController,
        ),
        titleSpacing: 0,
        toolbarHeight: 80,
      ),
      body: const SearchBlocBuilder());
}
