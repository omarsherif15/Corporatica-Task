import 'package:corporatica_task/Core/theming/styles.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Product/widgets/horizontal_product.dart';
import 'package:flutter/widgets.dart';

/// {@template cart_list_view}
/// CartListView widget.
/// {@endtemplate}
class SearchListView extends StatelessWidget {
  /// {@macro cart_list_view}
  const SearchListView({
    super.key, // ignore: unused_element

    required this.searchedProducts,
  });
  final List<ProductModel> searchedProducts;

  @override
  Widget build(BuildContext context) => SizedBox(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${searchedProducts.length} productsFound',
                    style: TextStyles.font24BlackBold.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => HorizontalProduct(
                      productModel: searchedProducts[index],
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                    itemCount: searchedProducts.length,
                  )
                ],
              ),
            ),
          ),
      );
}
