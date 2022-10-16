import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: const Text('arajeez, is a contests competitive application.'),
    );
  }
}
