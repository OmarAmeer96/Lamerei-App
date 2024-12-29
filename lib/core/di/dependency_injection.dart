import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:lamerei_app/core/networking/api_service.dart';
import 'package:lamerei_app/core/networking/dio_factory.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:lamerei_app/features/home/data/repositories/home_repo.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
