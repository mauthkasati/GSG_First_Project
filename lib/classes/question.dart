import 'package:gsg_first_project/enums.dart';

class Question {
  int? q_id;
  String? qText;
  String? choice1;
  String? choice2;
  String? choice3;
  String? choice4;
  Vals? correctChoice;
  Question(this.q_id, this.qText, this.choice1, this.choice2, this.choice3,
      this.choice4, this.correctChoice);
  Question.fromMap(Map<String, dynamic> mp) {
    q_id = mp['q_id'];
    qText = mp['qText'];
    choice1 = mp['choice1'];
    choice2 = mp['choice2'];
    choice3 = mp['choice3'];
    choice4 = mp['choice4'];
    correctChoice = mp['correctChoice'];
  }
  toMap() {
    return {
      'q_id': q_id,
      'qText': qText,
      'choice1': choice1,
      'choice2': choice2,
      'choice3': choice3,
      'choice4': choice4,
      'correctChoice': correctChoice
    };
  }
}
