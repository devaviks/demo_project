
import 'package:flutter/material.dart';

import 'image_picker.dart';

class ImageMain extends StatefulWidget {
  const ImageMain({super.key});

  @override
  _ImageMainState createState() => _ImageMainState();
}

class _ImageMainState extends State<ImageMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ImagePickerScreen(),
    );
  }
}