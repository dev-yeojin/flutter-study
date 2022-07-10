import 'package:flutter/material.dart';

import './NameCard.dart';

class NameCardListView extends StatelessWidget {
  const NameCardListView({Key? key}) : super(key: key);
  final int count = 10;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const NameCard();
      }
    );
  }
}
