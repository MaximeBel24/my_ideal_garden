import 'package:flutter/cupertino.dart';

class ColumnImageView extends StatelessWidget{

  final String imageUrl;

  const ColumnImageView({Key? key, required this.imageUrl}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Image.asset("images/$imageUrl"),
    );
  }

}