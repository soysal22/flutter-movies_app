import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/view/movies_detail.dart';
import 'package:flutter_movies_app/widget/text_large_bold.dart';

class RowCardMovies extends StatelessWidget {
  const RowCardMovies({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MoviesDetail(),
        ));
      },
      child: ClipRRect(
        borderRadius: MoviesConst.borderRadius20,
        child: Stack(children: [
          _Image(context),
          _columnTexts(context),
          _positionedConteinerIcon(context)
        ]),
      ),
    );
  }

  Padding _columnTexts(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLargeBold(text: text),
          MoviesConst.sizedBoxheight5,
          Text(MoviesConst.text_movies_year,
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: MoviesConst.colorWhite,
                  )),
          MoviesConst.sizedBoxheight5,
          _rowStarText(context),
        ],
      ),
    );
  }

  Positioned _positionedConteinerIcon(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 20,
      child: Container(
        width: MediaQuery.of(context).size.width / 10,
        height: MediaQuery.of(context).size.height / 20.5,
        decoration: BoxDecoration(
          borderRadius: MoviesConst.borderRadius40,
          color: MoviesConst.colorOrange,
        ),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_outline_sharp,
              color: MoviesConst.colorWhite,
            )),
      ),
    );
  }

  Row _rowStarText(BuildContext context) {
    return Row(children: [
      Icon(
        Icons.star,
        color: MoviesConst.colorYellow,
        size: 18,
      ),
      MoviesConst.sizedBoxwidth10,
      Text(MoviesConst.text_star,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: MoviesConst.colorWhite,
              )),
    ]);
  }

  Image _Image(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width / 1.3,
      height: MediaQuery.of(context).size.height / 5,
    );
  }
}
