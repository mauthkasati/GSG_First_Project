import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gsg_first_project/Screens/Question3.dart';
import 'package:gsg_first_project/Screens/Question4.dart';
import 'package:gsg_first_project/dataSets/contestList.dart';
import 'package:gsg_first_project/enums.dart';
import 'package:gsg_first_project/main.dart';
import 'package:gsg_first_project/mixins.dart';

class Question2 extends StatefulWidget {
  const Question2({super.key});

  @override
  State<Question2> createState() => _Question2();
}

class _Question2 extends State<Question2> {
  Timer? _timer;
  int _start = 10;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
          _group = Vals.none;
          mix.qNum++;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Question3(),
            ),
          );
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

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
                Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width / 7),
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
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Colors.blueGrey.shade800,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          constraints: const BoxConstraints(
                            maxHeight: double.infinity,
                          ),
                          child: Text(
                            'Q$numberOfQuestin : $qText',
                            overflow: TextOverflow.visible,
                            style: const TextStyle(fontSize: 18),
                          ),
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
                                if (_group == cc) {
                                  mix.score += _start;
                                }
                                mix.qNum++;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Question3(),
                                  ),
                                );
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
                                if (_group == cc) {
                                  mix.score += _start;
                                }
                                mix.qNum++;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Question3(),
                                  ),
                                );
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
                                if (_group == cc) {
                                  mix.score += _start;
                                }
                                mix.qNum++;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Question3(),
                                  ),
                                );
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
                                if (_group == cc) {
                                  mix.score += _start;
                                }
                                mix.qNum++;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Question3(),
                                  ),
                                );
                              });
                            },
                          ),
                        ),
                      ],
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
                        mix.score += _start;
                      }
                      mix.qNum++;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Question3(),
                        ),
                      );
                    },
                    child: const Text('Next'),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: FloatingActionButton(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      if (_group == cc) {
                        mix.score += _start;
                      }
                      mix.qNum++;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Question3(),
                        ),
                      );
                    },
                    child: Text(_start.toString()),
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
                //         builder: (context) => const Question3(),
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
