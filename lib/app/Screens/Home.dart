import 'package:flutter/material.dart';
import '../../data/AppData.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: homeTitle.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  padding: const EdgeInsets.all(12),
                  width: 350,
                  height: 165,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.surfaceVariant,
                          Theme.of(context).colorScheme.onInverseSurface,
                          Theme.of(context).colorScheme.surfaceVariant,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(5))),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(homeTitle[index]),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(Icons.star),
                                      SizedBox(width: 5),
                                      Icon(Icons.star),
                                      SizedBox(width: 5),
                                      Icon(Icons.star),
                                      SizedBox(width: 5),
                                      Icon(Icons.star),
                                      SizedBox(width: 5),
                                      Icon(Icons.star_half),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Text('Version: '),
                                      Text(homeVersion[index]),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    const Text('Released: '),
                                    Text(homeReleased[index]),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text('Updated: '),
                                    Text(homeUpdated[index]),
                                  ],
                                ),
                                const SizedBox(height: 17),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(homePrice[index],
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(width: 45),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 17),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ButtonOne(),
                                ButtonTwo(),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ]));
            }));
  }
}

class ButtonOne extends StatelessWidget {
  const ButtonOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.primaryContainer,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(8), bottom: Radius.circular(8))),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Text('Button One'),
        ));
  }
}

class ButtonTwo extends StatelessWidget {
  const ButtonTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.secondaryContainer,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(8), bottom: Radius.circular(8))),
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Text('Button Two'),
        ));
  }
}
