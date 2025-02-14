import 'package:bookly/feature/home/presentation/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

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
