import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_me.dart';
import 'package:flutter_portfolio/widgets/intro.dart';
import 'package:flutter_portfolio/widgets/tags.dart';
import 'package:flutter_portfolio/widgets/work_experience.dart';

class ComponentList extends StatelessWidget {
  const ComponentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: ListView(
            children: const [
              IntroWidget(),
              AboutMeWidget(),
              WorkExperience(),
            ],
          ),
        ),
        Positioned(
          child: Container(
            height: 45,
            color: Colors.white,
            child: const MyTagsMenu(),
          ),
        )
      ],
    );
  }
}
