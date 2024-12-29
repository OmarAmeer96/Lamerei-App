import 'package:dio/dio.dart';
import 'package:lamerei_app/core/networking/api_constants.dart';
import 'package:lamerei_app/features/home/data/models/products.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.getProducts)
  Future<Products> getProducts({
    // @Query('page') int? page,
    @Query('offset') int? offset,
    // @Query('products_per_page') int? productsPerPage,
    @Query('limit') int? limit,
  });
}
