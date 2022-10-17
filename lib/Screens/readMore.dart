import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_first_project/mixins.dart';

class ReadMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String d = mix.desc;
    return Theme(
      data: mix.themeData,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Description'),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
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
                      child: Text(
                        d,
                        style: const TextStyle(fontSize: 18, height: 2),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
