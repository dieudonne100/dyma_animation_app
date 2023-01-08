import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
      placeholder: 'images/imageplaceholder.jpg',
      image:
          'https://images.unsplash.com/photo-1523712999610-f77fbcfc3843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      fit: BoxFit.cover,
      fadeInCurve: Curves.easeIn,
      height: 300,
      width: double.infinity,
    );
  }
}
