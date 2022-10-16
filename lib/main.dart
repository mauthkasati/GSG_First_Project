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
  Widget build(Object context) {
    return Theme(
      data: mix.themeData,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                    child: Text('أراجيز', textAlign: TextAlign.center)),
                IconButton(
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
                )
              ],
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Contests',
                ),
                Tab(
                  text: 'Dashboard',
                ),
                Tab(
                  text: 'About',
                ),
              ],
            ),
          ),
          //drawer: const Drawer(),
          body: TabBarView(
            children: [
              const ContestsViewWidget(),
              Dashboared(),
              About(),
            ],
          ),
        ),
      ),
    );
  }
}
