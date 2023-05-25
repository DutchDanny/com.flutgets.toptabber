// Author: Danny van Dijk | Flutgets.com
// Copyright FlutGets (https://flutgets.com/)
// Created: May 20223
import 'package:flutter/material.dart';

class Leading extends StatelessWidget {
  const Leading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: () {Navigator.pop(context);},
        child: Container(
          width: 45,
          height: 45,
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background.withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(40)),
          ),
          child: Icon(Icons.arrow_back,color: Theme.of(context).colorScheme.onBackground, size: 25),
        ));
  }
}