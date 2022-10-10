import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/screen/action_screen.dart';
import 'package:flutter_movies_app/widget/column_card_movies.dart';
import 'package:flutter_movies_app/widget/row_card_movies.dart';

class HorrorScreen extends StatelessWidget {
  const HorrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowTextActionSeeMore(text: MoviesConst.text_horror_hollywood),
        MoviesConst.sizedBoxheight15,
        _rowCardSingleChildScrollview(),
        MoviesConst.sizedBoxheight15,
        rowTextActionSeeMore(text: MoviesConst.text_horror_bollywood),
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

Row _rowAppBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _rowIconList(),
      Row(children: [
        textBengeMovie(
            text: MoviesConst.text_benge, color: MoviesConst.colorBlue),
        textBengeMovie(
            text: MoviesConst.text_Movie, color: MoviesConst.colorOrange)
      ]),
      _rowContainerImage(context),
    ],
  );
}

Container _rowContainerImage(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width / 8,
    height: MediaQuery.of(context).size.height / 18,
    decoration: BoxDecoration(
        borderRadius: MoviesConst.borderRadius40, color: MoviesConst.colorGrey),
    child: Image.asset(
      MoviesConst.containerImage,
      fit: BoxFit.contain,
    ),
  );
}

Icon _rowIconList() {
  return Icon(
    Icons.list,
    color: MoviesConst.colorWhite,
    size: 35,
  );
}

_textField() {
  return TextField(
    decoration: InputDecoration(
      fillColor: MoviesConst.colorGrey,
      filled: true,
      hoverColor: MoviesConst.colorGrey,
      border: OutlineInputBorder(borderRadius: MoviesConst.borderRadius20),
      hintText: MoviesConst.search_textField,
      hintStyle: TextStyle(fontSize: 19, color: MoviesConst.colorWhite),
      prefixIcon: Icon(
        Icons.search,
        color: MoviesConst.colorWhite,
        size: 22,
      ),
    ),
  );
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
