import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactMeWidget extends StatefulWidget {
  const ContactMeWidget({super.key});

  @override
  State<ContactMeWidget> createState() => _ContactMeWidgetState();
}

class _ContactMeWidgetState extends State<ContactMeWidget> {
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
        children: <Widget>[
          _buildTitle('If you have any unique idea for Project in your mind'),
          _buildContactMeSection(),
          _buildDescription(
              'I\'ll make it as soon as possible. If you really like my work, then follow me on social media to learn more new things together.'),
          _buildSocialMedia(),
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
      textAlign: TextAlign.center,
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
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            height: 1,
          ),
        ),
      ),
    ],
  );
}

Widget _buildContactMeSection() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 4,
              shadowColor: Colors.black,
              backgroundColor: Colors.black,
              side: const BorderSide(
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            child: const Text(
              'Contact Me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: const Icon(
                Icons.phone_sharp,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '55 2539 5790',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
        ),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: const Icon(
                Icons.email,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'arromero0408@gmail.com',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildSocialMedia() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 15, 15, 25),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurStyle: BlurStyle.inner,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
            color: Colors.white,
          ),
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.squareInstagram,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurStyle: BlurStyle.inner,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
            color: Colors.white,
          ),
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.squareThreads,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurStyle: BlurStyle.inner,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
            color: Colors.white,
          ),
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.linkedin,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurStyle: BlurStyle.inner,
                blurRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
            color: Colors.white,
          ),
          child: const Center(
            child: FaIcon(
              FontAwesomeIcons.squareGithub,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
