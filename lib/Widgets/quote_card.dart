import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final String author;
  final String content;
  final bool isLoading;

  QuoteCard({this.author, this.content, this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: isLoading ? [CircularProgressIndicator()]: [
            Text(content, textAlign: TextAlign.center),
            Text(author),
          ],
        ),
      ),
    );
  }
}
