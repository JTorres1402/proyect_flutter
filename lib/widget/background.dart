import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  final String imageUrl;
  const BackgroundImage({required this.child, required this.imageUrl, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Place as the child widget of a scaffold
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
