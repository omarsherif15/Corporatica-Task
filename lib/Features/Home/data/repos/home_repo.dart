import 'package:corporatica_task/Core/networking/api_error_handler.dart';
import 'package:corporatica_task/Core/networking/api_result.dart';
import 'package:corporatica_task/Features/Home/data/apis/home_api_service.dart';
import 'package:corporatica_task/Features/Home/data/models/product_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<List<ProductModel>>> fetchAllProducts() async {
    try{
      final response = await _homeApiService.fetchAllProducts();
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
