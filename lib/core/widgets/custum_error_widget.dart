import 'package:flutter/material.dart';

class CustumErrorWidget extends StatelessWidget {
  final String errMessage;
  const CustumErrorWidget({super.key, required this.errMessage});

  @override
  Widget build(BuildContext context) {
    return Text(errMessage);
  }
}
