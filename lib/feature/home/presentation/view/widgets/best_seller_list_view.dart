import 'package:bookly/core/widgets/custum_error_widget.dart';
import 'package:bookly/feature/home/presentation/view_models/newest_books/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:bookly/feature/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: BooksListViewItem(
                    bookModel: state.bookModel[index],
                  ),
                );
              });
        } else if (state is NewestBookFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
