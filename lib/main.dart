import 'package:flutter/material.dart';
import 'package:flutter_portfolio/intro.dart';
import 'package:flutter_portfolio/tags.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65.0),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: AppBar(
                backgroundColor: const Color.fromRGBO(229, 229, 229, 1),
                centerTitle: true,
                title: const Text('Portfolio'),
                shadowColor: Colors.black,
                elevation: 5,
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                  tooltip: 'Menu Icon',
                ),
                actions: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                    tooltip: 'Share Icon',
                  )
                ],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black38),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Container(
              child: MyTagsMenu(),
            ),
          ),
        ),
      ),
    );
  }
}
