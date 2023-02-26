import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SVGImageView extends StatelessWidget {
  SVGImageView({
    Key? key,
    required this.imageAsset,
    required this.svgHeight,
    required this.svgWidth,
    this.color,
    this.svgFit = BoxFit.fill,
  }) : super(key: key);
  final String imageAsset;
  final double svgHeight;
  final double svgWidth;
  final BoxFit svgFit;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imageAsset,
      height: svgHeight,
      width: svgWidth,
      fit: svgFit,
      color: color,
    );
  }
}
