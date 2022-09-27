import 'package:flutter/material.dart';
import 'package:third_flutter_app/quote.dart';
import 'package:third_flutter_app/quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {
 // const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
    Quote(text: 'All our dreams can come true; if we have the courage to pursue them.',author: 'Walt Disney'),
    Quote(text: 'However difficult life may seem, there is always something you can do and succeed at',author: 'Stephen Hawking'),
    Quote(text: 'People begin to become successful the minute they decide to be.',author: 'Harvey MacKay'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //Text('${quote.text} - ${quote.author}')
        children: quotes.map((quote) => QuoteCard(quote: quote,delete: (){
          setState(() {
            quotes.remove(quote);
          });
        },)).toList(),
      ),
    );
  }
}


