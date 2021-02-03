import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_view_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel())
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Builder(
          builder: (context) {
            return Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Provider.of<HomeViewModel>(context).counter.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Padding(padding: EdgeInsets.all(50)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          onPressed: () => Provider.of<HomeViewModel>(context, listen: false).incrementCounter(),
                          child: Icon(Icons.exposure_plus_1, size: 50,)),
                        FlatButton(
                          onPressed: () => Provider.of<HomeViewModel>(context, listen: false).decrementCounter(),
                          child: Icon(Icons.exposure_minus_1, size: 50,)),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}