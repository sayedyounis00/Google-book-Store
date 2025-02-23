import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/view/widgets/book_action.dart';
import 'package:bookly/feature/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly/feature/home/presentation/view/widgets/simillar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size * 0.15),
                  child: CustomBookImage(
                    imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
                  ),
                ),
                const SizedBox(
                  height: 43,
                ),
                Text(
                  bookModel.volumeInfo!.title!,
                  style: Styles.textStyle30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    bookModel.volumeInfo!.authors.toString(),
                    style: Styles.textStyle18.copyWith(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const BookRating(rating: 5.5, count: 2345),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also Like",
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimillarBooksListView()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
