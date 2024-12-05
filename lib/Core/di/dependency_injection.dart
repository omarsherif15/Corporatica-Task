import 'package:corporatica_task/Core/networking/dio_factory.dart';
import 'package:corporatica_task/Features/Cart/data/repos/cart_repo.dart';
import 'package:corporatica_task/Features/Home/data/apis/home_api_service.dart';
import 'package:corporatica_task/Features/Home/data/repos/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Hive
  Dio dio = DioFactory.getDio();
  Box cartBox = Hive.box('Cart');

  // Home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));

  // Cart
  getIt.registerLazySingleton<Box>(() => Hive.box('Cart'));
  getIt.registerLazySingleton<CartRepo>(() => CartRepo(getIt()));
}
