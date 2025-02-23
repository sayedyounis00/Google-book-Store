import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final double rating;
  final int count;
  const BookRating({super.key, required this.rating, required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amberAccent,
          size: 20,
        ),
        const SizedBox(
          width: 8,
        ),
        BestSellerText(
          text: "$rating",
          textStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
        BestSellerText(
          text: ' ($count)',
          textStyle: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
