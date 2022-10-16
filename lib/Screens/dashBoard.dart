import 'package:flutter/material.dart';
import 'package:gsg_first_project/classes/userOnScoreBoard.dart';
import 'package:gsg_first_project/dataSets/userList.dart';

class Dashboared extends StatelessWidget {
  @override
  Widget build(Object context) {
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
      dash.add(Container(
        width: 400,
        height: 70,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Text(' $name ---> $score'),
      ));
    }
    for (var i = 0; i < userList.length; i++) {}
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoard'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: dash,
        ),
      ),
    );
  }
}
