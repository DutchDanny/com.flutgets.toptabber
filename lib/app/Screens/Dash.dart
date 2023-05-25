import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/AppData.dart';

class Dash extends StatelessWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: dashTitle.length,
            itemBuilder: (context, index) {
              return Card(
                  child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: ListTile(
                        dense: false,
                        style: ListTileStyle.list,
                        minLeadingWidth: 10,
                        leading: Icon(dashIcons[index]),
                        title: Text(dashTitle[index]),
                        subtitle: Text(dashSubTitle[index]),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 17,
                        ),
                        onTap: () => Navigator.of(context).push(
                            CupertinoPageRoute(
                                builder: (context) => route[index])),
                      )));
            }));
  }
}
