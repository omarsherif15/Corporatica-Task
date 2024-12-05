import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:flutter/material.dart';

class PlusMinusCart extends StatelessWidget {
  PlusMinusCart(
      {required this.count,
      required this.onTapMinus,
      required this.onTapPlus,
      required this.removeIcon,
      super.key});

  int? count;
  IconData removeIcon = Icons.remove;
  void Function() onTapPlus;
  void Function() onTapMinus;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTapMinus,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorsManager.mainPurple.withOpacity(0.2)),
            child: Icon(
              removeIcon,
              size: 20,
              color: ColorsManager.mainPurple,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            '$count',
            style:
                const TextStyle(color: ColorsManager.mainPurple, fontSize: 20),
          ),
        ),
        GestureDetector(
          onTap: onTapPlus,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: ColorsManager.mainPurple.withOpacity(0.2)),
            child: const Icon(
              Icons.add,
              size: 20,
              color: ColorsManager.mainPurple,
            ),
          ),
        )
      ],
    );
  }
}
