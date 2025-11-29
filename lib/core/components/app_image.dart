import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String path;
  final double? height, width;
  final BoxFit? fit;

  const AppImage({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    if (path.startsWith('http')) {
      return Image.network(
        path,
        height: height,
        width: width,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => Text('000'),
      );
    }
    if (path.endsWith('png')) {
      return Image.asset(
        'assets/png/$path',
        height: height,
        width: width,
        errorBuilder: (context, error, stackTrace) => Text('55'),
      );
    }
    if (path.endsWith('svg')) {
      return SvgPicture.asset(
        'assets/icons/$path',
        height: height,
        width: width,
        errorBuilder: (context, error, stackTrace) => Text('404'),
      );
    }
    if (path.endsWith('jpg')) {
      return Image.asset(
        'assets/images/$path',
        height: height,
        width: width,
        errorBuilder: (context, error, stackTrace) => Text('404'),
      );
    }
     else {
      return Text('22');
    }
  }
}
