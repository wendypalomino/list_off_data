import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main () => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(author: 'Vane', text: 'First quote'),
    Quote(author: 'Kiki', text: 'Second quote'),
    Quote(author: 'Ana', text: 'Third quote')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
            setState(() {
              quotes.remove(quote);
            });
        }
        )).toList(),
      ),
    );
  }
}


