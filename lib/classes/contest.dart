import 'package:gsg_first_project/classes/question.dart';
import 'package:gsg_first_project/classes/userOnScoreBoard.dart';
import 'package:gsg_first_project/dataSets/contestList.dart';

class Contest {
  int? c_id;
  String? contestName;
  String? category;
  String? description;
  List<Question>? questions;
  List<UserOnScoreBoard>? scoreboard;
  Contest(this.c_id, this.contestName, this.category, this.questions,
      this.scoreboard);
  Contest.fromMap(Map<String, dynamic> mp) {
    c_id = mp['c_id'];
    contestName = mp['contestName'];
    category = mp['category'];
    description = mp['description'];
    List<Question> l = [];
    for (var i = 0; i < mp['questions'].length; i++) {
      l.add(Question.fromMap(mp['questions'][i]));
    }
    questions = l;
    List<UserOnScoreBoard> ls = [];
    for (var i = 0; i < mp['scoreboard'].length; i++) {
      ls.add(UserOnScoreBoard.fromMap(mp['scoreboard'][i]));
    }
    scoreboard = ls;
  }
}
