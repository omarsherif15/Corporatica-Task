import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Product/widgets/product_widget.dart';
import 'package:flutter/widgets.dart';

class ProductGrid extends StatelessWidget {
  /// {@macro product_grid}
  const ProductGrid(
      {super.key, // ignore: unused_element
      required this.productsList});
  final List<ProductModel> productsList;

  @override
  Widget build(BuildContext context) => GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 0,
      crossAxisSpacing: 0,
      childAspectRatio: 0.6,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(productsList.length,
          (index) => ProductWidgetBuilder(productModel: productsList[index])));
}
