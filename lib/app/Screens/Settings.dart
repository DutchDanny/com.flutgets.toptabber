import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../data/AppData.dart';
import '../../model/AppModels.dart';

class Settings extends StatelessWidget {
  final List<ListViewRoute> _allScreens = ListViewRoute.allScreens();

  Settings({super.key}) {
    // Not Empty
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context));
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allScreens.length,
      itemBuilder: _getItemUI,
      padding: const EdgeInsets.all(0.0),
    );
  }

  // First Task
/* Widget _getItemUI(BuildContext context, int index) {
   return new Text(_allCities[index].name);
 }*/

  Widget _getItemUI(BuildContext context, int index) {
    return Card(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                "assets/images/${_allScreens[index].image}",
                fit: BoxFit.cover,
                width: 100.0,
              ),
              title: Text(
                _allScreens[index].title,
                style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(_allScreens[index].subtitle,
                        style: const TextStyle(
                            fontSize: 13.0, fontWeight: FontWeight.normal)),
                    Text(_allScreens[index].content,
                        style: const TextStyle(
                            fontSize: 11.0, fontWeight: FontWeight.normal)),
                  ]),
              onTap: () => Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => route[index]))
            )
          ],
        ));
  }
}