import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/screen/action_screen.dart';
import 'package:flutter_movies_app/widget/column_card_movies.dart';
import 'package:flutter_movies_app/widget/row_card_movies.dart';

class RomanticScreen extends StatelessWidget {
  const RomanticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowTextActionSeeMore(text: MoviesConst.text_romantic_hollwood),
        MoviesConst.sizedBoxheight15,
        _rowCardSingleChildScrollview(),
        MoviesConst.sizedBoxheight15,
        rowTextActionSeeMore(text: MoviesConst.text_romantic_bollywood),
        MoviesConst.sizedBoxheight15,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ColumnCardMovies(
                  text: MoviesConst.horror_screen_text_kapan,
                  image: MoviesConst.kapanImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.horror_screen_text_chhori,
                  image: MoviesConst.chhoriImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.horror_screen_text_kapan,
                  image: MoviesConst.kapanImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.horror_screen_text_chhori,
                  image: MoviesConst.chhoriImage),
            ],
          ),
        )
      ],
    );
    ;
  }
}

SingleChildScrollView _rowCardSingleChildScrollview() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        RowCardMovies(
            image: MoviesConst.korkuSeansiImage,
            text: MoviesConst.horror_screen_text_Korku),
        MoviesConst.sizedBoxwidth15,
        RowCardMovies(
            image: MoviesConst.bhollImage,
            text: MoviesConst.horror_screen_text_bholl),
        MoviesConst.sizedBoxwidth15,
      ],
    ),
  );
}
