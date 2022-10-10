import 'package:flutter/material.dart';
import 'package:flutter_movies_app/const/movies_const.dart';
import 'package:flutter_movies_app/view/movies_home.dart';
import 'package:flutter_movies_app/view/page_designing.dart';
import 'package:flutter_movies_app/view/watch_list.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});

  @override
  State<BottomView> createState() => _BottomdenemeState();
}

class _BottomdenemeState extends State<BottomView> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    MoviesHome(),
    WatchList(),
    PageDesigning(),
    PageDesigning(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final double _toolbarHeight = 90;
  final double _appBarSize = 30;
  final double _elevation0 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoviesConst.colorAppBar,
      appBar: _selectedIndex == 1
          ? AppBar(
              toolbarHeight: _toolbarHeight,
              elevation: _elevation0,
              backgroundColor: MoviesConst.colorTrasparent,
              leading: Icon(
                Icons.arrow_circle_left_outlined,
                color: MoviesConst.colorWhite,
                size: _appBarSize,
              ),
              centerTitle: true,
              title: Text(MoviesConst.text_watchlist,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: MoviesConst.colorWhite,
                        fontWeight: FontWeight.bold,
                      )),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: _appBarSize,
        type: BottomNavigationBarType.fixed,
        backgroundColor: MoviesConst.colorDarkGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border_outlined,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle_outline_rounded,
              ),
              label: ' '),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: ' ',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
