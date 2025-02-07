import 'package:flutter/material.dart';

class CardQuestion extends StatefulWidget {
  const CardQuestion({super.key, required this.text});
  final String text;

  @override
  State<CardQuestion> createState() => _CardQuestionState();
}

class _CardQuestionState extends State<CardQuestion> {
  @override
  Widget build(BuildContext context) {
    String text = widget.text;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
          child: Center(
        child: Text("$text"),
      )),
    );
  }
}
