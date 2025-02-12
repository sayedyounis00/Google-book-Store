// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  const BestSellerText({
    super.key,
    required this.text, this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text,
      style: textStyle,
    );
  }
}
