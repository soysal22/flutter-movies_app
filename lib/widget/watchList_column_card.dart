import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';

class WatchListColumncard extends StatelessWidget {
  const WatchListColumncard(
      {super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _clipRectImage(context),
        _bottomRightContainerIcon(),
        Positioned(
          left: 70,
          bottom: 5,
          child: Column(
            children: [
              _cardHeadText(context),
              MoviesConst.sizedBoxheight5,
              _cardInfoText(context),
              MoviesConst.sizedBoxheight5,
              _rowStarIconText(context)
            ],
          ),
        ),
      ],
    );
  }

  Row _rowStarIconText(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: MoviesConst.colorYellow,
        ),
        Text(MoviesConst.text_star,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: MoviesConst.colorWhite,
                ))
      ],
    );
  }

  Text _cardInfoText(BuildContext context) {
    return Text(MoviesConst.text_watchList_year,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: MoviesConst.colorWhite,
            ));
  }

  Text _cardHeadText(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: MoviesConst.colorWhite, fontWeight: FontWeight.bold));
  }

  Positioned _bottomRightContainerIcon() {
    return Positioned(
        right: 0,
        bottom: 0,
        child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: MoviesConst.colorcop,
                borderRadius:
                    BorderRadius.only(bottomRight: MoviesConst.radius20)),
            child: Center(
              child: Icon(
                Icons.restore_from_trash_outlined,
                size: 30,
                color: MoviesConst.colorWhite,
              ),
            )));
  }

  ClipRRect _clipRectImage(BuildContext context) {
    return ClipRRect(
      borderRadius: MoviesConst.borderRadius20,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
