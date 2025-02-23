import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:bookly/feature/home/presentation/view_models/similar_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimmilarBooks(category: widget.bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        actions: const [Icon(Icons.shopping_cart)],
      ),
      body: const BookDetailsViewBody(),
    );
  }
}
