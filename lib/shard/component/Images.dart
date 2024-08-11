import 'package:flutter/material.dart';

class ImageLeft extends StatelessWidget {
  const ImageLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('images/left.png',
        height: 27, width: 27, color: Colors.grey);
  }
}
