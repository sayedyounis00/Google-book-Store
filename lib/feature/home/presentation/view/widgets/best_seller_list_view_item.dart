import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/view/widgets/custom_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BooksListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BooksListViewItem({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl:
                bookModel.volumeInfo!.imageLinks!.smallThumbnail.toString(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: BestSellerText(
                      text: bookModel.volumeInfo!.title!,
                      textStyle: Styles.textStyle30,
                    ),
                  ),
                  BestSellerText(
                    text: bookModel.volumeInfo!.authors.toString(),
                    textStyle: Styles.textStyle14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BestSellerText(
                        text: "Free",
                        textStyle: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const BookRating(rating: 5.5, count: 2345),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
