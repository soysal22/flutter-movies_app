import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class PageDesigning extends StatelessWidget {
  const PageDesigning({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            MoviesConst.text_page_desing,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: MoviesConst.colorOrange),
          ),
          MoviesConst.sizedBoxwidth10,
          Icon(
            Icons.smart_toy_outlined,
            color: MoviesConst.colorOrange,
          )
        ],
      ),
    );
  }
}
