import 'package:flutter/material.dart';

class ImageLeft extends StatelessWidget {
  const ImageLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/left.png',
        height: 35, width: 35, color: Colors.grey);
  }
}
