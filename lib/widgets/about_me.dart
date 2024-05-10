import 'package:flutter/material.dart';

class AboutMeWidget extends StatefulWidget {
  const AboutMeWidget({super.key});

  @override
  State<AboutMeWidget> createState() => _AboutMeWidgetState();
}

class _AboutMeWidgetState extends State<AboutMeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(229, 229, 229, 1),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildTitle('About Me'),
          _buildDescription(
              'I\'m a software developer for websites and mobile applications. With the help of the Figma design tool. I also like prototyping which help me to expand my knowledge to be able to share it with you. If you have any questions contact me and I will give you my best effort to show the result to your requirement as soon as possible. If you really like my work then follow me on X or Threads where I share my journey through the programming world.'),
        ],
      ),
    );
  }
}

Widget _buildTitle(String text) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget _buildDescription(String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 30),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}
