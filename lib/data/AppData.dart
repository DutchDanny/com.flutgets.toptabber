import 'package:flutter/material.dart';
import '../app/Screens/ListViewRoutes/RouteFive.dart';
import '../app/Screens/ListViewRoutes/RouteFour.dart';
import '../app/Screens/ListViewRoutes/RouteOne.dart';
import '../app/Screens/ListViewRoutes/RouteSix.dart';
import '../app/Screens/ListViewRoutes/RouteThree.dart';
import '../app/Screens/ListViewRoutes/RouteTwo.dart';

// Home.dart list Page route
List<String> homeTitle = ['Facebook', 'Twitter', 'Pinterest', 'Instagram', 'Linkedin', 'Youtube'];
List<String> homeVersion = ['1.0.0', '1.0.0', '1.0.0', '1.0.0', '1.0.0', '1.0.0'];
List<String> homeReleased = ['Feb. 2023', 'Feb. 2023', 'Feb. 2023', 'Jul. 2022', 'Oct. 2022', 'Jan. 2022'];
List<String> homeUpdated = ['Feb. 2023', 'Feb. 2023', 'Feb. 2023', 'Feb. 2023', 'Feb. 2023', 'Feb. 2023'];
List<String> homePrice = ['€ 10,00', '€ 15,00', '€ 12,00', '€ 22,00', '€ 18,00', '€ 11,00'];

// People.dart list Page route
List<IconData> peopleIcons = [Icons.safety_check, Icons.shield_moon, Icons.laptop,Icons.water_drop, Icons.join_inner, Icons.tag_faces];
List<String> peopleTitle = ['ListView to Route One', 'ListView to Route Two', 'ListView to Route Three', 'ListView to Route Four', 'ListView to Route Five', 'ListView to Route Six'];
List<String> peopleSubTitle = ['ListViewSubTitle One', 'ListView SubTitle Two', 'ListView SubTitle Three', 'ListView SubTitle Four', 'ListView SubTitle Five', 'ListView SubTitle Six'];

// Dash.dart list Page route
List<IconData> dashIcons = [Icons.apps, Icons.update, Icons.radio_button_on,Icons.account_circle_rounded, Icons.palette_outlined, Icons.gif_box_outlined];
List<String> dashTitle = ['ListViewCard to Route One', 'ListViewCard to Route Two', 'ListViewCard to Route Three', 'ListViewCard to Route Four', 'ListViewCard to Route Five', 'ListViewCard to Route Six'];
List<String> dashSubTitle = ['ListViewCard SubTitle One', 'ListViewCard SubTitle Two', 'ListViewCard SubTitle Three', 'ListViewCard SubTitle Four', 'ListViewCard SubTitle Five', 'ListViewCard SubTitle Six'];

// People.dart - Dash.dart - Settings.dart || ListView.builder Page Route
List<Widget> route = [
  const RouteOne(),
  const RouteTwo(),
  const RouteThree(),
  const RouteFour(),
  const RouteFive(),
  const RouteSix()
];
