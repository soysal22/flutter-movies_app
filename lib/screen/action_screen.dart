import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/widget/column_card_movies.dart';
import 'package:flutter_movies_app/widget/row_card_movies.dart';

class ActionScreen extends StatelessWidget {
  const ActionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowTextActionSeeMore(text: MoviesConst.text_holyywood),
        MoviesConst.sizedBoxheight15,
        _rowCardSingleChildScrollview(),
        MoviesConst.sizedBoxheight15,
        rowTextActionSeeMore(text: MoviesConst.text_bolyywood),
        MoviesConst.sizedBoxheight15,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ColumnCardMovies(
                  text: MoviesConst.text_radhe, image: MoviesConst.readheImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.text_action,
                  image: MoviesConst.actionImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.text_radhe, image: MoviesConst.readheImage),
              MoviesConst.sizedBoxwidth15,
              ColumnCardMovies(
                  text: MoviesConst.text_action,
                  image: MoviesConst.actionImage),
            ],
          ),
        ),
      ],
    );
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
            image: MoviesConst.enderImage, text: MoviesConst.text_enders),
        MoviesConst.sizedBoxwidth15,
        RowCardMovies(
            image: MoviesConst.warBaxImage, text: MoviesConst.text_warBax),
        MoviesConst.sizedBoxwidth15,
      ],
    ),
  );
}

class rowTextActionSeeMore extends StatelessWidget {
  const rowTextActionSeeMore({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: MoviesConst.colorWhite,
                )),
        Text(MoviesConst.text_seeMore,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: MoviesConst.colorOrange,
                ))
      ],
    );
  }
}

class textBengeMovie extends StatelessWidget {
  const textBengeMovie({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: color),
    );
  }
}
