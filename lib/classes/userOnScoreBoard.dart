class UserOnScoreBoard {
  String? username;
  num? totalScore;
  UserOnScoreBoard(this.username, this.totalScore);
  UserOnScoreBoard.fromMap(Map<String, dynamic> mp) {
    username = mp['username'];
    totalScore = mp['totalScore'];
  }
  toMap() {
    return {'username': username, 'totalScore': totalScore};
  }
}
