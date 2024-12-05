import 'package:corporatica_task/Features/Home/widgets/home_appbar.dart';
import 'package:corporatica_task/Features/Home/widgets/products_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  /// {@macro home_screen}
  const HomeScreen({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: HomeAppbar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: ProductsBlocBuilder(),
          ),
        ),
      );
}
