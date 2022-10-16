class User {
  int? u_id;
  bool? isAdmin;
  String? username;
  String? password;
  int? totalScore;
  User(this.u_id, this.isAdmin, this.username, this.password, this.totalScore);
  User.fromMap(Map<String, dynamic> mp) {
    u_id = mp['u_id'];
    isAdmin = mp['isAdmin'];
    username = mp['username'];
    password = mp['password'];
    totalScore = mp['totalScore'];
  }
  toMap() {
    return {
      'u_id': u_id,
      'isAdmin': isAdmin,
      'username': username,
      'password': password,
      'totalScore': totalScore
    };
  }
}
