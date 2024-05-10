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
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: filters.length,
      separatorBuilder: (_, __) => const SizedBox(width: 4),
      itemBuilder: (context, index) {
        final filter = filters[index];
        return Chip(
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
        );
        //const SizedBox(
        //height: 4,
        //width: 4,
        //)
      },
    );
  }
}
