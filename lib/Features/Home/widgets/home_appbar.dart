import 'package:corporatica_task/Core/helpers/extensions.dart';
import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Core/widgets/my_text.dart';
import 'package:corporatica_task/Features/Home/widgets/cart_icon_builder.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  /// {@macro home_appbar}
  const HomeAppbar({
    super.key, // ignore: unused_element
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) => AppBar(
        title: const CustomizedText(
          text: 'MiniShop',
          color: ColorsManager.mainPurple,
          size: 20.0,
          weight: FontWeight.bold,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: ColorsManager.mainPurple,
            ),
            onPressed: () {
              context.pushNamed(Routes.searchScreen);
            },
          ),
          const CartIconBuilder()
        ],
      );
}
