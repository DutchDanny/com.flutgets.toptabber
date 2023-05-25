import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/AppData.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(4),
      itemCount: peopleTitle.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          dense: false,
          style: ListTileStyle.list,
          minLeadingWidth: 10,
          leading: Icon(peopleIcons[index]),
          title: Text(peopleTitle[index]),
          subtitle: Text(peopleSubTitle[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 17,
          ),
          onTap: () => Navigator.of(context)
              .push(CupertinoPageRoute(builder: (context) => route[index])),
        );
      },
    );
  }
}
