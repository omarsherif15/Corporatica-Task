import 'package:corporatica_task/Core/widgets/loading_shimmer.dart';
import 'package:flutter/widgets.dart';


/// {@template product_grid}
/// ProductGrid widget.
/// {@endtemplate}
class LoadingProductGrid extends StatelessWidget {
  /// {@macro product_grid}
  const LoadingProductGrid({
    super.key, // ignore: unused_element
  });
  
  @override
  Widget build(BuildContext context) =>
    GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0,
                        childAspectRatio: 0.5,
                        padding: EdgeInsets.zero,
                        children: List.generate(
                            12, (index) => const LoadingShimmer(loadingStyle: LoadingType.titleWithDescriptionAndImage,)));
}
