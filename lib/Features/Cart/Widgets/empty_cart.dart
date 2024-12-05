import 'package:corporatica_task/Core/helpers/extensions.dart';
import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SvgPicture.string(_emptyCart, height: 400, width: 300),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'No Items in Cart',
                  style: TextStyles.font24BlackBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Looks like you havnt added any items yet',
                  style: TextStyles.font24BlackBold.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsManager.mainPurple,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(double.infinity, 50)),
                    onPressed: () {
                      context.pushNamedAndRemoveUntil(Routes.homeScreen,
                          predicate: (route) => false);
                    },
                    child: const Text(
                      'Lets Shop',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  final String _emptyCart = '''
<svg width="212" height="123" viewBox="0 0 212 123" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M137 111H46C42.134 111 39 107.866 39 104C39 100.134 42.134 97 46 97H7C3.13401 97 0 93.866 0 90C0 86.134 3.13401 83 7 83H47C50.866 83 54 79.866 54 76C54 72.134 50.866 69 47 69H22C18.134 69 15 65.866 15 62C15 58.134 18.134 55 22 55H62C58.134 55 55 51.866 55 48C55 44.134 58.134 41 62 41H119C122.866 41 126 44.134 126 48C126 51.866 122.866 55 119 55H183C186.866 55 190 58.134 190 62C190 65.866 186.866 69 183 69H205C208.866 69 212 72.134 212 76C212 79.866 208.866 83 205 83H186C182.134 83 179 86.134 179 90C179 93.866 182.134 97 186 97H192C195.866 97 199 100.134 199 104C199 107.866 195.866 111 192 111H140C139.485 111 138.983 110.944 138.5 110.839C138.017 110.944 137.515 111 137 111Z" fill="#FFF4ED"/>
<path d="M147.872 111H170.3M44.8721 111H66.3262H44.8721ZM32 111H38.8721H32ZM175 111H177.872H175Z" stroke="#54311D" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M78.8721 6.30273L89.9717 18.7559M130.972 6.30273L119.872 18.7559L130.972 6.30273ZM104.872 2V18.7559V2Z" stroke="#B08770" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M73.6696 34H136.276L130.67 42.4098L138.145 48.0164H71.8008L80.2106 42.4098L73.6696 34Z" fill="#EDE0D8"/>
<rect x="69.8721" y="46" width="71" height="75" rx="2" fill="white"/>
<path fill-rule="evenodd" clip-rule="evenodd" d="M74.4573 87.0061V52.6453C74.4573 51.2297 75.6175 50.082 77.0487 50.082L138.025 114.164C138.025 116.052 136.514 117.582 134.65 117.582H77.8322C75.9683 117.582 74.4573 116.052 74.4573 114.164V101.395V97.9301V87.0061ZM74.4573 94.4248V90.5765Z" fill="#EDE0D8"/>
<path d="M70.8721 87.4631V49.8853C70.8721 48.3371 72.1426 47.082 73.7098 47.082H138.633C139.654 47.082 140.481 47.9187 140.481 48.9509V117.164C140.481 119.228 138.826 120.902 136.785 120.902H74.5677C72.5267 120.902 70.8721 119.228 70.8721 117.164V103.199V99.4099M70.8721 95.5764V91.3678" stroke="#54311D" stroke-width="2.5" stroke-linecap="round"/>
<path d="M72.7352 47.082V35.8689C72.7352 34.8368 73.4861 34.0001 74.4124 34.0001L136.468 34.0001C137.394 34.0001 138.145 34.8368 138.145 35.8689V47.082" stroke="#54311D" stroke-width="2.5"/>
<path d="M90.022 66.705C91.8282 66.705 93.2924 65.2408 93.2924 63.4346C93.2924 61.6283 91.8282 60.1641 90.022 60.1641C88.2157 60.1641 86.7515 61.6283 86.7515 63.4346C86.7515 65.2408 88.2157 66.705 90.022 66.705Z" fill="#EDE0D8" stroke="#54311D" stroke-width="2.5" stroke-linecap="round"/>
<path d="M120.858 66.705C122.664 66.705 124.129 65.2408 124.129 63.4346C124.129 61.6283 122.664 60.1641 120.858 60.1641C119.052 60.1641 117.588 61.6283 117.588 63.4346C117.588 65.2408 119.052 66.705 120.858 66.705Z" fill="#EDE0D8" stroke="#54311D" stroke-width="2.5" stroke-linecap="round"/>
<path d="M120.391 66.7049C120.391 74.9621 113.697 81.6558 105.44 81.6558C97.183 81.6558 90.4893 74.9621 90.4893 66.7049" stroke="#54311D" stroke-width="2.5" stroke-linecap="round"/>
<path d="M73.7266 34.9316L80.305 41.4253C80.698 41.8133 80.7021 42.4464 80.3141 42.8395C80.247 42.9075 80.1704 42.9656 80.0868 43.0118L72.7351 47.0821" stroke="#54311D" stroke-width="2.5" stroke-linecap="round"/>
<path d="M137.312 34.999L131.017 41.4195C130.631 41.8138 130.637 42.447 131.031 42.8336C131.097 42.8982 131.171 42.9533 131.252 42.9975L138.74 47.0818" stroke="#54311D" stroke-width="2.5" stroke-linecap="round"/>
</svg>
''';
}
