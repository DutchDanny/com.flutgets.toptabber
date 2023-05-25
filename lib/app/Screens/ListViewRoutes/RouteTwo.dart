import 'package:flutter/material.dart';
import '../../Widgets/Leading.dart';

class RouteTwo extends StatelessWidget {
  const RouteTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: const Leading(),
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    padding: const EdgeInsets.all(4),
                      color: Colors.white.withOpacity(0.7),
                      child: const Text('Collapsing Toolbar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ))),
                  background: Image.asset(
                    'assets/images/item-header.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: const Center(
          child: Text('Route Two'),
        ),
      ),
    );
  }
}
