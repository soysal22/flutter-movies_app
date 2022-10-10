import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/view/bottom_view.dart';
import 'package:flutter_movies_app/screen/action_screen.dart';
import 'package:flutter_movies_app/screen/comedy_screen.dart';
import 'package:flutter_movies_app/screen/horror_screen.dart';
import 'package:flutter_movies_app/screen/romantic_screen.dart';
import 'package:flutter_movies_app/widget/column_card_movies.dart';
import 'package:flutter_movies_app/widget/row_card_movies.dart';

class MoviesHome extends StatefulWidget {
  const MoviesHome({super.key});

  @override
  State<MoviesHome> createState() => _MoviesHomeState();
}

class _MoviesHomeState extends State<MoviesHome> with TickerProviderStateMixin {
  late final TabController _tabController;

  final List<Tab> _tabbarList = [
    Tab(
      child: Text('Action'),
    ),
    Tab(
      child: Text('Horror'),
    ),
    Tab(
      child: Text('Comedy'),
    ),
    Tab(
      child: Text('Romantic'),
    ),
  ];

  final List<Widget> _tabbarViewList = [
    ActionScreen(),
    HorrorScreen(),
    ComedyScreen(),
    RomanticScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabbarList.length, vsync: this);
  }

  final double _top = 55;
  final double _topPadding = 15;
  final double _left = 10;
  final double _containerheight = 25;
  final double _iconSize = 35;
  final double _width = 8;
  final double _height = 18;
  final double _fontSize = 19;
  final double _size = 22;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabbarList.length,
      child: Padding(
        padding: EdgeInsets.only(top: _top, left: _left, right: _left),
        child: Column(
          children: [
            _rowAppBar(context),
            MoviesConst.sizedBoxheight15,
            _textField(),
            MoviesConst.sizedBoxheight15,
            Container(
              height: MediaQuery.of(context).size.height / _containerheight,
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: MoviesConst.borderRadius20,
                    color: MoviesConst.colorOrange),
                labelColor: MoviesConst.colorWhite,
                tabs: _tabbarList,
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(top: _topPadding),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: _tabbarViewList,
              ),
            ))
          ],
        ),
      ),
    );
  }

  TextField _textField() {
    return TextField(
      decoration: InputDecoration(
        fillColor: MoviesConst.colorGrey,
        filled: true,
        hoverColor: MoviesConst.colorGrey,
        border: OutlineInputBorder(borderRadius: MoviesConst.borderRadius20),
        hintText: MoviesConst.search_textField,
        hintStyle:
            TextStyle(fontSize: _fontSize, color: MoviesConst.colorWhite),
        prefixIcon: Icon(
          Icons.search,
          color: MoviesConst.colorWhite,
          size: _size,
        ),
      ),
    );
  }

  Row _rowAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_icon(), _rowText(), _containerImage(context)],
    );
  }

  Container _containerImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / _width,
      height: MediaQuery.of(context).size.height / _height,
      decoration: BoxDecoration(
          borderRadius: MoviesConst.borderRadius40,
          color: MoviesConst.colorGrey),
      child: Image.asset(
        MoviesConst.containerImage,
        fit: BoxFit.contain,
      ),
    );
  }

  Row _rowText() {
    return Row(children: [
      textBengeMovie(
          text: MoviesConst.text_benge, color: MoviesConst.colorBlue),
      textBengeMovie(
          text: MoviesConst.text_Movie, color: MoviesConst.colorOrange)
    ]);
  }

  Icon _icon() {
    return Icon(
      Icons.list,
      color: MoviesConst.colorWhite,
      size: _iconSize,
    );
  }
}
