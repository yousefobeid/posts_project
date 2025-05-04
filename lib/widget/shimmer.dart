import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  ShimmerWidget({super.key, this.width = double.infinity, required this.height})
    : shapeBorder = RoundedRectangleBorder();
  ShimmerWidget.rounded({
    super.key,
    this.width = double.infinity,
    required this.height,
  }) : shapeBorder = RoundedRectangleBorder();

  @override
  Widget build(BuildContext context) => Shimmer(
    gradient: LinearGradient(
      colors: [Colors.grey.shade300, Colors.grey.shade100],
    ),
    child: Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(shape: shapeBorder, color: Colors.grey[400]),
    ),
  );
}
