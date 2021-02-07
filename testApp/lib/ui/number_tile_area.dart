import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import 'home_view_model.dart';

//List of Cards with size
List<StaggeredTile> _cardTile = <StaggeredTile>[
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  _SampleTile(Color(0xff444444), "AC"),
  _SampleTile(Color(0xff444444), "+/-"),
  _SampleTile(Color(0xff444444), "%"),
  _SampleTile(Colors.orange, "÷"),
  _SampleTile(Color(0xff777777), "7"),
  _SampleTile(Color(0xff777777), "8"),
  _SampleTile(Color(0xff777777), "9"),
  _SampleTile(Colors.orange, "×"),
  _SampleTile(Color(0xff777777), "4"),
  _SampleTile(Color(0xff777777), "5"),
  _SampleTile(Color(0xff777777), "6"),
  _SampleTile(Colors.orange, "-"),
  _SampleTile(Color(0xff777777), "1"),
  _SampleTile(Color(0xff777777), "2"),
  _SampleTile(Color(0xff777777), "3"),
  _SampleTile(Colors.orange, "+"),
  _SampleTile(Color(0xff777777), "0"),
  _SampleTile(Color(0xff777777), "."),
  _SampleTile(Colors.orange, "="),
];

class NumberTileArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      // mainAxisSpacing: 4,
      staggeredTiles: _cardTile,
      children: _listTile,
    );
  }
}

class _SampleTile extends StatelessWidget {
  const _SampleTile(this.backgroundColor, this.text);

  final Color backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 50),),
        ),
      ),
    );
  }
}
