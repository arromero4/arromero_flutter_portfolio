import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/about_me.dart';
import 'package:flutter_portfolio/widgets/intro.dart';
import 'package:flutter_portfolio/widgets/tags.dart';

class ComponentList extends StatelessWidget {
  ComponentList({super.key});

  final List<Widget> widgets = [
    const SizedBox(
      height: 50,
      child: MyTagsMenu(),
    ),
    const IntroWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return widgets[index];
      },
      itemCount: widgets.length,
    );
  }
}
