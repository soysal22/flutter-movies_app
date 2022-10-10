import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/view/bottom_view.dart';
import 'package:readmore/readmore.dart';

class MoviesDetail extends StatelessWidget {
  const MoviesDetail({super.key});

  final double flexi = 4.5;
  final double flex = 5.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoviesConst.colorAppBar,
      body: Column(
        children: [
          Expanded(
              flex: flexi.toInt(),
              child: Stack(
                children: [
                  _Image(context),
                  _backLeftIcon(context),
                  _positionedRowContainer(context),
                ],
              )),
          Expanded(
            flex: flex.toInt(),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _rowHeadText(context),
                  _rowTextHindi(context),
                  MoviesConst.sizedBoxheight10,
                  _textYear(context),
                  MoviesConst.sizedBoxheight10,
                  _rowContainerTextIcon(),
                  MoviesConst.sizedBoxheight10,
                  textStoryActor(text: MoviesConst.detail_text_story),
                  MoviesConst.sizedBoxheight10,
                  _readMoreTextStoryLine(context),
                  MoviesConst.sizedBoxheight15,
                  textStoryActor(text: MoviesConst.detail_text_actor),
                  MoviesConst.sizedBoxheight15,
                  _miniCliprRectImage(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _miniCliprRectImage() {
    return Row(
      children: [
        cliprRectImage(image: MoviesConst.yashImage),
        MoviesConst.sizedBoxwidth10,
        cliprRectImage(image: MoviesConst.sirindiImage),
        MoviesConst.sizedBoxwidth10,
        cliprRectImage(image: MoviesConst.ihityarImage),
        MoviesConst.sizedBoxwidth10,
        cliprRectImage(image: MoviesConst.monuImage),
      ],
    );
  }

  ReadMoreText _readMoreTextStoryLine(BuildContext context) {
    return ReadMoreText(
        textAlign: TextAlign.left,
        MoviesConst.detail_text_readMore,
        trimLines: 3,
        // colorClickableText: MoviesConst.colorGrey,
        trimMode: TrimMode.Line,
        trimCollapsedText: MoviesConst.detail_trimCollapsedText,
        trimExpandedText: MoviesConst.detail_trimExpandedText,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: MoviesConst.colorWhite,
            ));
  }

  Row _rowContainerTextIcon() {
    return Row(
      children: [
        elevatedButtonShareTextIcon(
            text: MoviesConst.detail_text_like,
            icon: Icons.front_hand_outlined),
        MoviesConst.sizedBoxwidth15,
        elevatedButtonShareTextIcon(
            text: MoviesConst.detail_text_comment,
            icon: Icons.comment_outlined),
        MoviesConst.sizedBoxwidth15,
        elevatedButtonShareTextIcon(
          text: MoviesConst.detail_text_share,
          icon: Icons.share,
        ),
      ],
    );
  }

  Text _textYear(BuildContext context) {
    return Text(MoviesConst.text_watchList_year,
        style: Theme.of(context).textTheme.subtitle2?.copyWith(
              color: MoviesConst.colorWhite,
            ));
  }

  Row _rowTextHindi(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(MoviesConst.detail_text_hindi,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: MoviesConst.colorWhite, fontWeight: FontWeight.w500)),
        Text(MoviesConst.detail_text_hindi_view,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: MoviesConst.colorWhite,
                )),
      ],
    );
  }

  Row _rowHeadText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(MoviesConst.detail_text_kgf_chapter,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: MoviesConst.colorWhite, fontWeight: FontWeight.w500)),
        Row(
          children: [
            Icon(
              Icons.star,
              color: MoviesConst.colorYellow,
              size: 18,
            ),
            Text(MoviesConst.text_four,
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: MoviesConst.colorWhite,
                    )),
          ],
        )
      ],
    );
  }

  Positioned _positionedRowContainer(BuildContext context) {
    return Positioned(
        left: 20,
        bottom: 80,
        child: Row(
          children: [
            _containerIconTextWatchNow(context),
            MoviesConst.sizedBoxwidth15,
            _containerWhiteTextAdd(context),
          ],
        ));
  }

  Container _containerWhiteTextAdd(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 2.1,
      decoration: BoxDecoration(
        borderRadius: MoviesConst.borderRadius10,
        color: MoviesConst.colorWhite,
      ),
      child: Center(
        child: TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_outline_rounded,
            color: MoviesConst.colorOrange,
            size: 25,
          ),
          label: Text(
            MoviesConst.text_watch_add,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: MoviesConst.colorOrange,
                ),
          ),
        ),
      ),
    );
  }

  Container _containerIconTextWatchNow(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 20,
      width: MediaQuery.of(context).size.width / 2.5,
      decoration: BoxDecoration(
        borderRadius: MoviesConst.borderRadius10,
        color: MoviesConst.colorOrange,
      ),
      child: Center(
        child: TextButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.play_circle_outlined,
            color: MoviesConst.colorWhite,
            size: 25,
          ),
          label: Text(
            MoviesConst.text_watch_now,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: MoviesConst.colorWhite,
                ),
          ),
        ),
      ),
    );
  }

  Positioned _backLeftIcon(BuildContext context) {
    return Positioned(
        left: 20,
        top: 60,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BottomView(),
            ));
          },
          child: Icon(
            Icons.arrow_circle_left_outlined,
            color: MoviesConst.colorWhite,
            size: 35,
          ),
        ));
  }

  Image _Image(BuildContext context) {
    return Image.asset(
      MoviesConst.kgfImage,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
    );
  }
}

class cliprRectImage extends StatelessWidget {
  const cliprRectImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MoviesConst.borderRadius20,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width / 4.75,
        height: MediaQuery.of(context).size.height / 8.5,
      ),
    );
  }
}

class textStoryActor extends StatelessWidget {
  const textStoryActor({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5?.copyWith(
          color: MoviesConst.colorWhite, fontWeight: FontWeight.w500),
    );
  }
}

class elevatedButtonShareTextIcon extends StatelessWidget {
  const elevatedButtonShareTextIcon({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: MoviesConst.borderRadius10,
      child: ElevatedButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                      color: MoviesConst.colorWhite,
                    ),
              ),
              MoviesConst.sizedBoxwidth5,
              Icon(
                icon,
                color: MoviesConst.colorWhite,
                size: 19,
              )
            ],
          )),
    );
  }
}
