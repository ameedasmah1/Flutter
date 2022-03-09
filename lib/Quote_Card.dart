import 'package:flutter/material.dart';
import 'Qutos.dart';

class QuoteCard extends StatelessWidget {
  final Qutos quotesOne;
  final Function deleted;
  QuoteCard({required this.quotesOne,required this.deleted});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[700],
      margin: EdgeInsets.fromLTRB(0, 16,16, 0),
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width-120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(quotesOne.title,style: TextStyle(fontSize: 14,fontWeight:FontWeight.normal)),
                  Text(quotesOne.author,style: TextStyle(fontSize: 14,fontWeight:FontWeight.normal)),
           FlatButton.icon(onPressed:(){deleted();}, icon: Icon(Icons.delete), label: Text('delete')),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}