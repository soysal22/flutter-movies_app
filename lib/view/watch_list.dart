import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/widget/watchList_column_card.dart';

class WatchList extends StatefulWidget {
  const WatchList({super.key});

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoviesConst.colorAppBar,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MoviesConst.sizedBoxheight20,
              WatchListColumncard(
                  image: MoviesConst.deadpolImage,
                  text: MoviesConst.text_deadpool),
              MoviesConst.sizedBoxheight20,
              WatchListColumncard(
                  image: MoviesConst.malecifyImage,
                  text: MoviesConst.text_maleficent),
              MoviesConst.sizedBoxheight20,
              WatchListColumncard(
                  image: MoviesConst.wonderImage,
                  text: MoviesConst.text_wonder),
              MoviesConst.sizedBoxheight20,
              WatchListColumncard(
                  image: MoviesConst.deadpolImage,
                  text: MoviesConst.text_deadpool),
              MoviesConst.sizedBoxheight20,
              WatchListColumncard(
                  image: MoviesConst.malecifyImage,
                  text: MoviesConst.text_maleficent),
              MoviesConst.sizedBoxheight20,
              WatchListColumncard(
                  image: MoviesConst.wonderImage,
                  text: MoviesConst.text_wonder),
            ],
          ),
        ),
      ),
    );
  }
}
