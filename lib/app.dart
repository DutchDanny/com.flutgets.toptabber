import 'package:flutter/material.dart';
import 'app/Screens/Dash.dart';
import 'app/Screens/Home.dart';
import 'app/Screens/Notifications.dart';
import 'app/Screens/People.dart';
import 'app/Screens/Settings.dart';
import 'app/Widgets/AlertDialog.dart';

enum PopMenuItem { itemOne, itemTwo, itemThree }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  PopMenuItem? selectedMenu;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          alertDialog(context);
        },
        label: const Text('Information'),
        icon: const Icon(Icons.info_outline),
        backgroundColor: Colors.green.shade700,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Row(children: [
                SizedBox(width: 5),
                Text('FlutGets TopTabber'),
              ],),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              actions: [
                const Icon(
                  Icons.search, size: 25.0,
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.language_outlined, size: 25.0,
                ),
                PopupMenuButton<PopMenuItem>(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                    initialValue: selectedMenu,
                    onSelected: (PopMenuItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<PopMenuItem>>[
                      const PopupMenuItem<PopMenuItem>(
                        value: PopMenuItem.itemOne,
                        child: Text('Item 1'),
                      ),
                      const PopupMenuItem<PopMenuItem>(
                        value: PopMenuItem.itemTwo,
                        child: Text('Item 2'),
                      ),
                      const PopupMenuItem<PopMenuItem>(
                        value: PopMenuItem.itemThree,
                        child: Text('Item 3'),
                      ),
                    ],
                ),
              ],
              bottom: TabBar(
                tabs: const <Tab>[
                  Tab(child: SizedBox(child: Icon(Icons.home_outlined, size: 25))),
                  Tab(
                    child: SizedBox(
                      child: Icon(Icons.person_pin_circle_outlined, size: 25),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      child: Icon(Icons.dashboard_outlined, size: 25),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      child: Icon(Icons.notifications_none, size: 25),
                    ),
                  ),
                  Tab(
                    child: SizedBox(
                      child: Icon(Icons.settings_outlined, size: 25),
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            const Home(),
            const People(),
            const Dash(),
            const Notifications(),
            Settings(),
          ],
        ),
      ),
    );
  }
}

