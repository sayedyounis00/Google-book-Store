import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          const Image(image: AssetImage(AssetsData.testImage)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: const BestSellerText(
                      text: "Hary Poter and the goblet of fire",
                      textStyle: Styles.textStyle30,
                    ),
                  ),
                  const BestSellerText(
                    text: "J.k Rowling",
                    textStyle: Styles.textStyle14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BestSellerText(
                        text: r'19.99 $',
                        textStyle: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const BookRating(),
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
