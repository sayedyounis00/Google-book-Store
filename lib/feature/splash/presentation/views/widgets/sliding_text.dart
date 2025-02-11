import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAmimation,
  });

  final Animation<Offset> slidingAmimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:slidingAmimation,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAmimation,
          child: const Text(
            'Free Books For All',
            textAlign: TextAlign.center,
          ),
        );
      }
    );
  }
}
