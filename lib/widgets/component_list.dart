import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/intro.dart';
import 'package:flutter_portfolio/widgets/tags.dart';

class ComponentList extends StatefulWidget {
  const ComponentList({super.key});

  @override
  State<ComponentList> createState() => _ComponentListState();
}

class _ComponentListState extends State<ComponentList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 50,
              child: MyTagsMenu(),
            ),
            Expanded(
              flex: 4,
              child: IntroWidget(),
            ),
          ],
        ),
      ],
    );
  }
}
