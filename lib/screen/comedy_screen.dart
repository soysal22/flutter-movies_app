import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/screen/action_screen.dart';
import 'package:flutter_movies_app/widget/column_card_movies.dart';
import 'package:flutter_movies_app/widget/row_card_movies.dart';

class ComedyScreen extends StatelessWidget {
  const ComedyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowTextActionSeeMore(text: MoviesConst.text_comedy_hollwood),
        MoviesConst.sizedBoxheight15,
        _rowCardSingleChildScrollview(),
        MoviesConst.sizedBoxheight15,
        rowTextActionSeeMore(text: MoviesConst.text_comedy_hollwood),
        MoviesConst.sizedBoxheight10,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ColumnCardMovies(
                  text: MoviesConst.comedy_screen_text_happy,
                  image: MoviesConst.happyImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.comedy_screen_text_zero,
                  image: MoviesConst.zeroImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.comedy_screen_text_happy,
                  image: MoviesConst.happyImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.comedy_screen_text_zero,
                  image: MoviesConst.zeroImage),
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
            image: MoviesConst.eyvahImage,
            text: MoviesConst.comedy_screen_text_eyvah),
        MoviesConst.sizedBoxwidth15,
        RowCardMovies(
            image: MoviesConst.aceventImage,
            text: MoviesConst.comedy_screen_text_acevent),
        MoviesConst.sizedBoxwidth15,
      ],
    ),
  );
}
