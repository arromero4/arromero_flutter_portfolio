import 'package:flutter/material.dart';

class MyTagsMenu extends StatelessWidget {
  const MyTagsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> filters = [
      'About Me',
      'Experiences',
      'Services',
      'Contact Me'
    ];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: filters.length,
      itemBuilder: (context, index) {
        final filter = filters[index];
        return Wrap(
          children: <Widget>[
            Chip(
              elevation: 3,
              shadowColor: Colors.black,
              label: Text(
                filter,
                style: const TextStyle(color: Colors.white),
              ),
              labelStyle: const TextStyle(
                fontSize: 16,
              ),
              backgroundColor: Colors.black,
              side: const BorderSide(
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            SizedBox(
              height: 4,
              width: 4,
            )
          ],
        );
      },
    );
  }
}
