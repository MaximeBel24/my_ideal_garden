import 'package:flutter/cupertino.dart';

class RowImageView extends StatelessWidget {

  final String imageUrl;

  const RowImageView({Key? key, required this.imageUrl}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "images/$imageUrl",
          height: 130,
          width: 130,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}