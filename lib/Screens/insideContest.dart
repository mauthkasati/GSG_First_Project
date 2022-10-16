import 'package:flutter/material.dart';
import 'package:gsg_first_project/Screens/question2.dart';
import 'package:gsg_first_project/dataSets/contestList.dart';
import 'package:gsg_first_project/enums.dart';
import 'package:gsg_first_project/main.dart';
import 'package:gsg_first_project/mixins.dart';

class InsideContest extends StatefulWidget {
  const InsideContest({super.key});

  @override
  State<InsideContest> createState() => _InsideContestState();
}

class _InsideContestState extends State<InsideContest> {
  String s = mix.conName;
  int n = mix.conNum;
  List<Container> ls2 = [];
  int numberOfQuestin = mix.qNum;
  String qText =
      contestList[mix.conNum - 1]['questions'][mix.qNum - 1]['qText'];
  Vals? _group = Vals.none;
  String ch1 =
      contestList[mix.conNum - 1]['questions'][mix.qNum - 1]['choice1'];
  String ch2 =
      contestList[mix.conNum - 1]['questions'][mix.qNum - 1]['choice2'];
  String ch3 =
      contestList[mix.conNum - 1]['questions'][mix.qNum - 1]['choice3'];
  String ch4 =
      contestList[mix.conNum - 1]['questions'][mix.qNum - 1]['choice4'];
  Vals cc =
      contestList[mix.conNum - 1]['questions'][mix.qNum - 1]['correctChoice'];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mix.themeData,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contest $n : $s'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/stars.webp'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.25,
                    constraints: const BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    margin:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 7),
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.25,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            constraints: const BoxConstraints(
                              maxHeight: double.infinity,
                            ),
                            child: Text('Q$numberOfQuestin : $qText'),
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                          ListTile(
                            title: Text(ch1),
                            leading: Radio<Vals>(
                              value: Vals.one,
                              groupValue: _group,
                              onChanged: (Vals? value) {
                                setState(() {
                                  _group = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(ch2),
                            leading: Radio<Vals>(
                              value: Vals.two,
                              groupValue: _group,
                              onChanged: (Vals? value) {
                                setState(() {
                                  _group = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(ch3),
                            leading: Radio<Vals>(
                              value: Vals.three,
                              groupValue: _group,
                              onChanged: (Vals? value) {
                                setState(() {
                                  _group = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text(ch4),
                            leading: Radio<Vals>(
                              value: Vals.four,
                              groupValue: _group,
                              onChanged: (Vals? value) {
                                setState(() {
                                  _group = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: FloatingActionButton(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      if (_group == cc) {
                        mix.score++;
                      }
                      mix.qNum++;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Question2(),
                        ),
                      );
                    },
                    child: const Text('Next'),
                  ),
                ),
                // IconButton(
                //   icon: const Icon(Icons.skip_next),
                //   onPressed: () {
                //     if (_group == cc) {
                //       mix.score++;
                //     }
                //     mix.qNum++;
                //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const Question2(),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
