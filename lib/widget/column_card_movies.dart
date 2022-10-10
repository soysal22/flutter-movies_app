import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/view/movies_detail.dart';
import 'package:flutter_movies_app/widget/text_large_bold.dart';

class ColumnCardMovies extends StatelessWidget {
  const ColumnCardMovies({super.key, required this.text, required this.image});

  final String text;
  final String image;

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
        child: Stack(
          children: [
            _image(context),
            _positionedColumnTexts(context),
            _positionedContainerIcon(context)
          ],
        ),
      ),
    );
  }

  Positioned _positionedContainerIcon(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 20,
      child: Container(
        width: MediaQuery.of(context).size.width / 9.9,
        height: MediaQuery.of(context).size.height / 20.4,
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

  Positioned _positionedColumnTexts(BuildContext context) {
    return Positioned(
      left: 20,
      bottom: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLargeBold(text: text),
          MoviesConst.sizedBoxheight10,
          Row(children: [
            Icon(
              Icons.star,
              color: MoviesConst.colorYellow,
              size: 20,
            ),
            Text(MoviesConst.text_four,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: MoviesConst.colorWhite,
                      fontWeight: FontWeight.bold,
                    )),
          ]),
        ],
      ),
    );
  }

  Image _image(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width / 2.2,
      height: MediaQuery.of(context).size.height / 3.4,
    );
  }
}
