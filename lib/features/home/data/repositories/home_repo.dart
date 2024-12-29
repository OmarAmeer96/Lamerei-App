import 'package:lamerei_app/core/networking/api_error_handler.dart';
import 'package:lamerei_app/core/networking/api_result.dart';
import 'package:lamerei_app/core/networking/api_service.dart';
import 'package:lamerei_app/features/home/data/models/product.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<List<Product>>> getProducts({
    int? offset,
    int? limit,
  }) async {
    try {
      final response = await _apiService.getProducts(
        offset: offset,
        limit: limit,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
