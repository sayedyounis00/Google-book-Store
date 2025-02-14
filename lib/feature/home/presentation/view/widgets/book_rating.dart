import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment? mainAxisAlignment;
  const BookRating({super.key, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
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
          text: '4.8 ',
          textStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
        ),
        BestSellerText(
          text: '(2465)',
          textStyle: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
