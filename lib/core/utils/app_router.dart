import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/home/data/Repo/home_repo_impl.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/view/book_details_view.dart';
import 'package:bookly/feature/home/presentation/view/home_view.dart';
import 'package:bookly/feature/home/presentation/view_models/similar_cubit/similar_books_cubit.dart';
import 'package:bookly/feature/search/presentation/view/search_view.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = "/homeView";
  static const kDetialsView = "/DetialsView";
  static const kSearchView = "/seachView";
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kDetialsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child:  BookDetailsView(
              bookModel: state.extra as BookModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kDetialsView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
    ],
  );
}
