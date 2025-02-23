import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custum_error_widget.dart';
import 'package:bookly/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly/feature/home/presentation/view_models/featured_books/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return GestureDetector(
            onTap: () => GoRouter.of(context).push(AppRouter.kDetialsView),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                itemCount: state.bookModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomBookImage(
                    imageUrl: state
                        .bookModel[index].volumeInfo!.imageLinks!.smallThumbnail
                        .toString(),
                  );
                },
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
