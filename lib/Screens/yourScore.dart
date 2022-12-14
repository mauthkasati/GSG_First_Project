import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_first_project/Screens/contestsViewWidget.dart';
import 'package:gsg_first_project/dataSets/contestList.dart';
import 'package:gsg_first_project/main.dart';
import 'package:gsg_first_project/mixins.dart';

class YourScreen extends StatefulWidget {
  @override
  State<YourScreen> createState() => _YourScreenState();
}

class _YourScreenState extends State<YourScreen> {
  @override
  Widget build(BuildContext context) {
    int s = mix.score;
    String msg = '';
    if (s == 0) {
      msg = 'ZERROOOOOO, try again.';
    } else if (s == 1) {
      msg = 'You got an almost bad result, try again.';
    } else if (s == 2) {
      msg = 'not very bad,but try again.';
    } else if (s == 3) {
      msg = 'good, but try again.';
    } else if (s == 4) {
      msg = 'Your result is good.';
    } else if (s == 5) {
      msg = 'Great, you got full mark.';
    }
    return Theme(
      data: mix.themeData,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('The Result'),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/stars.webp'),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.25,
                    height: MediaQuery.of(context).size.height / 3,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
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
                      child: Text('Your Score is : $s of 50'),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    mix.qNum = 1;
                    mix.score = 0;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  child: const Icon(Icons.home),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
