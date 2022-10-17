import 'package:flutter/material.dart';

import 'package:gsg_first_project/classes/userOnScoreBoard.dart';
import 'package:gsg_first_project/dataSets/userList.dart';

class Dashboared extends StatelessWidget {
  const Dashboared({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserOnScoreBoard> temp = [];
    for (var i = 0; i < userList.length; i++) {
      UserOnScoreBoard uosb =
          UserOnScoreBoard(userList[i]['username'], userList[i]['totalScore']);
      temp.add(uosb);
    }
    temp.sort(((a, b) => a.totalScore!.compareTo(b.totalScore!)));
    List<UserOnScoreBoard> scores = [];
    for (var i = temp.length - 1; i >= 0; i--) {
      scores.add(temp[i]);
    }
    List<Container> dash = [];
    for (var i = 0; i < scores.length; i++) {
      String name = scores[i].username.toString();
      num? score = scores[i].totalScore;
      int order = i + 1;
      dash.add(
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
              Text('$order - $name '),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 70,
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
                        child: Text('$score'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
    for (var i = 0; i < userList.length; i++) {}
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.125,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/stars.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: dash,
          ),
        ),
      ),
    );
  }
}
