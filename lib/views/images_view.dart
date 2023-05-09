import 'package:flutter/material.dart';
import 'package:google_images/model/image_model.dart';

class ImagesView extends StatelessWidget {
  const ImagesView({Key? key, this.imagesResult}) : super(key: key);

  final ImagesResult? imagesResult;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Image.network(imagesResult!.thumbnail!)],
      ),
    );
  }
}
