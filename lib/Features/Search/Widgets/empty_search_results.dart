import 'package:corporatica_task/Core/theming/styles.dart';
import 'package:flutter/material.dart';


class EmptySearchResults extends StatelessWidget {
  const EmptySearchResults({super.key, this.emptySearchField = false});

  final bool emptySearchField;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/search.jpg'),
              height: 400,
              width: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    emptySearchField
                        ? 'Start Hunting!'
                        : 'Oops! No Results Found',
                    style: TextStyles.font24BlackBold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    emptySearchField
                        ? 'Start Searching For Your Favorite Products'
                        : 'Sorry, we could not find any products that match your search.',
                    style: TextStyles.font12GrayRegular.copyWith(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
