import 'package:flutter/material.dart';
import 'package:user_app/components/heading.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(heading1: "Discover", heading2: "Knowledge vault")
            ],
          )),
    );
  }
}
