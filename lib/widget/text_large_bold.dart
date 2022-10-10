import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class TextLargeBold extends StatelessWidget {
  const TextLargeBold(
      {super.key, required this.text, this.color = Colors.white});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: color, fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
