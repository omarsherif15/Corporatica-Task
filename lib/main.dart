import 'package:corporatica_task/Core/di/dependency_injection.dart';
import 'package:corporatica_task/Core/helpers/bloc_observer.dart';
import 'package:corporatica_task/Core/routing/app_router.dart';
import 'package:corporatica_task/Core/routing/routes.dart';
import 'package:corporatica_task/Core/theming/colors.dart';
import 'package:corporatica_task/Features/Cart/cubit/cart_cubit.dart';
import 'package:corporatica_task/Features/Cart/data/Model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:toastification/toastification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(CartModelAdapter());
  await Hive.openBox('Cart');
  await setupGetIt();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final customCacheManager = CacheManager(Config(
    'customCacheKey',
    stalePeriod: const Duration(days: 7),
    repo: JsonCacheInfoRepository(),
  ));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      ensureScreenSize: true,
      child: BlocProvider(
        create: (context) => CartCubit(getIt())..fetchCartData(),
        child: ToastificationWrapper(
          child: MaterialApp(
            title: 'Corporatica Task',
            theme: ThemeData(
              primaryColor: ColorsManager.mainPurple,
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.homeScreen,
            onGenerateRoute: AppRouter().generateRoute,
          ),
        ),
      ),
    );
  }
}
