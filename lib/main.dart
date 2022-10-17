import 'package:flutter/material.dart';
import 'package:gsg_first_project/mixins.dart';

import 'Screens/About.dart';
import 'Screens/contestsViewWidget.dart';
import 'Screens/dashBoard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreenOfApp(),
    );
  }
}

class MainScreenOfApp extends StatefulWidget {
  const MainScreenOfApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenOfApp createState() => _MainScreenOfApp();
}

class _MainScreenOfApp extends State<MainScreenOfApp> {
  ThemeData themeData = ThemeData.dark();
  Icon icn = const Icon(Icons.light_mode);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mix.themeData,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Container(
              height: 70,
              width: MediaQuery.of(context).size.width / 1.25,
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(1),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 50,
                      width: 70,
                      margin: const EdgeInsets.all(1),
                      padding: const EdgeInsets.all(1),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: const Text('أراجيز'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 50,
                      width: 70,
                      margin: const EdgeInsets.all(1),
                      padding: const EdgeInsets.all(1),
                      alignment: Alignment.centerRight,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: IconButton(
                        icon: icn,
                        onPressed: () {
                          return setState(
                            () {
                              if (mix.themeMode == ThemeMode.dark) {
                                mix.themeMode = ThemeMode.light;
                                mix.themeData = ThemeData.light();
                                icn = const Icon(Icons.dark_mode);
                              } else {
                                mix.themeMode = ThemeMode.dark;
                                mix.themeData = ThemeData.dark();
                                icn = const Icon(Icons.light_mode);
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  text: 'Contests',
                ),
                Tab(
                  icon: Icon(
                    Icons.leaderboard,
                    color: Colors.green,
                  ),
                  text: 'Leaderboard',
                ),
                Tab(
                  icon: Icon(
                    Icons.account_balance,
                    color: Colors.green,
                  ),
                  text: 'About',
                ),
              ],
            ),
          ),
          //drawer: const Drawer(),
          body: TabBarView(
            children: [
              const ContestsViewWidget(),
              const Dashboared(),
              About(),
            ],
          ),
        ),
      ),
    );
  }
}
