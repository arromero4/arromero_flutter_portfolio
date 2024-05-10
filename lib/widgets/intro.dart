import 'package:flutter/material.dart';

class IntroWidget extends StatefulWidget {
  const IntroWidget({super.key});

  @override
  State<IntroWidget> createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
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
          _buildProfileImage(),
          const SizedBox(height: 8),
          _buildIntroText('Hello'),
          _buildIntroText('I\'m Andres Romero'),
          _buildIntroText('Software Developer'),
          _buildActionButtons(),
        ],
      ),
    );
  }
}

Widget _buildProfileImage() {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
        'assets/images.png',
        height: 200,
        width: 200,
        fit: BoxFit.fill,
      ),
    ),
  );
}

Widget _buildIntroText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget _buildActionButtons() {
  return Padding(
    padding: const EdgeInsets.all(25.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton('Hire Me'),
        const SizedBox(
          width: 6,
        ),
        _buildButton('Download CV'),
      ],
    ),
  );
}

Widget _buildButton(String text) {
  return Expanded(
    child: ElevatedButton(
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
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}
