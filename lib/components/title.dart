import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  String? title;
  TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Text(title!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }
}
