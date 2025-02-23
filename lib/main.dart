import 'package:bookly/core/constant/constants.dart';
import 'package:bookly/core/services/api_services.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/home/data/Repo/home_repo_impl.dart';
import 'package:bookly/feature/home/presentation/view_models/featured_books/featured_books_cubit.dart';
import 'package:bookly/feature/home/presentation/view_models/newest_books/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) =>
              //??\\ here we replace HomeRepoImpl(apiServices: ApiServices()) //!with this!// getIt.get<HomeRepoImpl>()
              NewestBookCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
