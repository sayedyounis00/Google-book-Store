import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          text: r"19.99$",
          bGColor: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
          textColor: Colors.black,
        )),
        Expanded(
            child: CustomButton(
          text: "Free Preview",
          bGColor: Color.fromARGB(255, 121, 11, 48),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          textColor: Colors.white,
        )),
      ],
    );
  }
}
