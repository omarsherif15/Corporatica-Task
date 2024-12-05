import 'package:corporatica_task/Core/widgets/loading_shimmer.dart';
import 'package:flutter/widgets.dart';

class LoadingSearchList extends StatelessWidget {
  /// {@macro loading_cart_list}
  const LoadingSearchList({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        child: ListView.separated(
            itemBuilder: (context, index) => const LoadingShimmer(
                loadingStyle: LoadingType.titleWithDescription),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: 3),
      );
}
