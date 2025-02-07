import 'package:flutter/material.dart';
import 'package:quiz/widgets/card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
          itemCount: 10,
          itemBuilder: (context, index) {
            return CardQuestion(
              text: index.toString(),
            );
          }),
    );
  }
}
