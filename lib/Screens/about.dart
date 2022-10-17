import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 1.125,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/stars.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.25,
                height: MediaQuery.of(context).size.height / 13,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: const [
                    Text(''),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
