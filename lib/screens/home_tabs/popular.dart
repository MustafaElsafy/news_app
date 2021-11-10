import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return _drawSingleCard();
      },
      itemCount: 20,
    );
  }

  Widget _drawSingleCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10),
                color: Colors.grey.shade800,
                width: 90,
                height: 90,
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text(
                      'The World Global Warming Annual Summit',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Michael Adams'),
                        Row(
                          children: <Widget>[
                            Icon(Icons.timer),
                            Text('15 min'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
