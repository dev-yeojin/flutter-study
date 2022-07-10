import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.changeContentByIndex}) : super(key: key);
  final Function? changeContentByIndex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        child: Center(
            child: ElevatedButton(
      child: const Text('이미지'),
      onPressed: () {
        widget.changeContentByIndex!(1);
      },
    )));
  }
}
