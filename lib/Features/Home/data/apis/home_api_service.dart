

import 'package:corporatica_task/Core/networking/api_constants.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'home_api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl : ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.products)
  Future<List<ProductModel>> fetchAllProducts();
}