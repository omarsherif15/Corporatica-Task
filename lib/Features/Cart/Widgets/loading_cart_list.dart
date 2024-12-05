import 'package:corporatica_task/Core/widgets/loading_shimmer.dart';
import 'package:flutter/widgets.dart';

class LoadingCartList extends StatelessWidget {
  /// {@macro loading_cart_list}
  const LoadingCartList({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.63,
        child: ListView.separated(
            itemBuilder: (context, index) => const LoadingShimmer(
                loadingStyle: LoadingType.titleWithDescription),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: 3),
      );
}
