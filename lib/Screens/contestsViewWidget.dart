import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_first_project/Screens/readMore.dart';
import 'package:gsg_first_project/mixins.dart';
import 'package:gsg_first_project/dataSets/contestList.dart';
import '../Screens/insideContest.dart';
import '../classes/contest.dart';

class ContestsViewWidget extends StatelessWidget {
  const ContestsViewWidget({super.key, int? id});

  Widget build(BuildContext context) {
    //list of contests in Main Screen
    List<Contest> contests = [];
    for (var element in contestList) {
      contests.add(Contest.fromMap(element));
    }
    List<Container> ls1 = [];
    for (var i = 0; i < contestList.length; i++) {
      int? contestID = contests[i].c_id;
      String? contestName = contests[i].contestName;
      mix.desc = contests[i].description!;
      ls1.add(
        Container(
          width: MediaQuery.of(context).size.width / 1.25,
          height: MediaQuery.of(context).size.height / 13,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contest $contestID : $contestName'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: FloatingActionButton(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          onPressed: () => {
                                mix.conNum = contestID!,
                                mix.conName = contestName!,
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ReadMore(),
                                  ),
                                ),
                              },
                          child: const Icon(Icons.auto_stories)),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FloatingActionButton(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          onPressed: () => {
                                mix.conNum = contestID!,
                                mix.conName = contestName!,
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const InsideContest(),
                                  ),
                                ),
                              },
                          child: const Icon(Icons.app_registration_rounded)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.125,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/stars.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: ls1,
        ),
      ),
    );
  }
}
