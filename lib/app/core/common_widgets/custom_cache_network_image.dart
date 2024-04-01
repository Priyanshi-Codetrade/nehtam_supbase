import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'center_loader_widget.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit boxFit;
  final Widget placeholderWidget, errorWidget;
  final double? height, width;

  const CustomNetworkImage(
    this.imageUrl, {
    super.key,
    this.boxFit = BoxFit.fill,
    this.height,
    this.width,
    this.errorWidget = const Placeholder(),
    this.placeholderWidget = const CenterLoader(),
  });

  @override
  CachedNetworkImage build(BuildContext context) => CachedNetworkImage(
        fit: boxFit,
        height: height,
        width: width,
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => errorWidget,
        placeholder: (context, url) => placeholderWidget,
      );
}
