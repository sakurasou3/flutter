import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testApp/ui/number_tile_area.dart';

import 'home_view_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeViewModel())],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Builder(builder: (context) {
          return Container(
            child: Column(
              children: [
                ResultArea(),
                NumberTileArea(),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class ResultArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: const Color(0xff333333),
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            Provider.of<HomeViewModel>(context).counter.toString(),
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 50, color: Color(0xffffffff)),
          ),
        ),
      ),
    );
  }
}
