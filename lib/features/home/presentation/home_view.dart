import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lamerei_app/core/theming/colors_manager.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_state.dart';
import 'package:lamerei_app/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:lamerei_app/features/home/presentation/widgets/home_ui_states.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getProducts();

    // Fetch more products when the user reaches 60% of the list.
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent * 0.6) {
        context.read<HomeCubit>().loadMoreProducts();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        color: ColorsManager.primaryColor,
        displacement: 10,
        onRefresh: () async {
          context.read<HomeCubit>().getProducts();
        },
        child: Container(
          color: Color(0xFFf5f5f5),
          child: Stack(
            children: [
              Column(
                children: [
                  CustomHomeAppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: BlocBuilder<HomeCubit, HomeState>(
                          buildWhen: (previous, current) =>
                              current is Loading ||
                              current is Success ||
                              current is Error,
                          builder: (context, state) {
                            return state.maybeWhen(
                              loading: setupsLoadingState,
                              success: (productsResponse) {
                                return setupSuccessState(
                                  context,
                                );
                              },
                              error: (_) {
                                return setupErrorState(context);
                              },
                              orElse: () => SizedBox.shrink(),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
