import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Features/Cart/Screens/cart_screen.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Home/cubit/home_cubit.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:corporatica_task/Features/Home/screens/home_screen.dart';
import 'package:corporatica_task/Features/Product/Screens/product_details_screen.dart';
import 'package:corporatica_task/Features/Search/Screens/search_screen.dart';
import 'package:corporatica_task/Features/Search/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            lazy: false,
            create: (context) => HomeCubit(getIt())..getProductsList(),
            child: const HomeScreen(),
          ),
        );
      case Routes.productDetails:
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(
            productModel: arguments as ProductModel,
          ),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SearchCubit(),
                  child: SearchScreen(),
                ));
      default:
        return null;
    }
  }
}
