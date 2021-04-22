import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Quotes(),
  )
);

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  // List<String> quotes = [
  //   'Follow peace with all men and Holiness',
  //   'Be ready always to give an answer to every man the reason for your faith',
  //   'A double minded man is unstable in all his ways'
  // ];
  List<Quote> quotes = [
    Quote(quote:'Follow peace with all men and Holiness', author: 'Apostle Paul' ),
    Quote(quote: 'Be ready always to give an answer to every man the reason for your faith', author: 'Apostle Peter'),
    Quote(quote: 'A double minded man is unstable in all his ways', author: 'Apostle James'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes App'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ),
      ),
    );
  }
}

