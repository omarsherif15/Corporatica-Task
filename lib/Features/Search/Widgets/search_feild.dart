import 'package:corporatica_task/Features/Search/cubit/search_cubit.dart';
import 'package:corporatica_task/Features/Search/cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField(
      {super.key, this.onChanged, required this.searchController});

  final void Function(String)? onChanged;

  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fillColor: Colors.white10,
                  hintText: 'Search',
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 25,
                  )),
              onChanged: (value) => context.read<SearchCubit>().search(value),
              onSubmitted: (value) => context.read<SearchCubit>().search(value),
            ),
          ),
        );
      },
    );
  }
}
