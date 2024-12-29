import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_state.dart';
import 'package:lamerei_app/features/home/data/models/product.dart';
import 'package:lamerei_app/features/home/data/repositories/home_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _productsRepo;

  HomeCubit(this._productsRepo) : super(const HomeState.initial());

  int currentPage = 0;
  bool isLoadingMore = false;
  bool hasMoreProducts = true;
  final List<Product> allProducts = [];

  void getProducts() async {
    currentPage = 0;
    isLoadingMore = false;
    hasMoreProducts = true;
    allProducts.clear();

    emit(const HomeState.loading());

    final response = await _productsRepo.getProducts(
      offset: currentPage,
      limit: 10,
    );

    response.when(
      success: (productsResponse) {
        allProducts.addAll(productsResponse);
        hasMoreProducts = productsResponse.length == 10; // Assume 10 is the limit per page
        emit(HomeState.success(List.from(allProducts))); // Emit a copy of the list
      },
      failure: (error) {
        emit(
          HomeState.error(
            error: error.apiErrorModel.message ?? 'Something went wrong!',
          ),
        );
      },
    );
  }

  void loadMoreProducts() async {
    if (isLoadingMore || !hasMoreProducts) return;

    isLoadingMore = true;
    currentPage += 10;

    final response = await _productsRepo.getProducts(
      offset: currentPage,
      limit: 10,
    );

    response.when(
      success: (productsResponse) {
        isLoadingMore = false;
        hasMoreProducts = productsResponse.length == 10; // Check if more products exist
        allProducts.addAll(productsResponse);
        emit(HomeState.success(List.from(allProducts))); // Emit a copy of the updated list
      },
      failure: (error) {
        isLoadingMore = false;
        emit(HomeState.paginationError(
          error: error.apiErrorModel.message ?? 'Something went wrong!',
        ));
      },
    );
  }
}
