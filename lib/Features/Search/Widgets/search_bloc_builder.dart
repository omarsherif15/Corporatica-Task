import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_state.dart';
import 'package:corporatica_task/Features/Search/Widgets/search_list_view.dart';
import 'package:corporatica_task/Features/Search/Widgets/empty_search_results.dart';
import 'package:corporatica_task/Features/Search/Widgets/loading_search_list.dart';
import 'package:corporatica_task/Features/Search/cubit/search_cubit.dart';
import 'package:corporatica_task/Features/Search/cubit/search_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchBlocBuilder extends StatelessWidget {
  /// {@macro search_bloc_builder}
  const SearchBlocBuilder({
    super.key, // ignore: unused_element
  });
  
  @override
  Widget build(BuildContext context) =>
     BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () {
              return const LoadingSearchList();
            },
            success: (searchList) {
              if (searchList.isEmpty) return const EmptySearchResults();
              return SearchListView (
                searchedProducts: searchList,
              );
            },
            failure: () => const SizedBox.shrink(),
            orElse: () {
              return const SizedBox.shrink();
            });
      });
}
