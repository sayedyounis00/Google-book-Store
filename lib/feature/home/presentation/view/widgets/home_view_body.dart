import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly/feature/home/presentation/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.only(top: 50.0, left: 16),
            child: Text("Best Seller", style: Styles.textStyle20),
          ),
        ]),
      ),
      SliverFillRemaining(
        child: BestSellerListView(),
      ),
    ]);
  }
}
