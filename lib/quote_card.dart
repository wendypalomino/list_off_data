import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard ({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.pink
              ),),
            SizedBox(height: 6),
            Text(quote.author,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.pink
              ),),
            SizedBox(height: 8),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}