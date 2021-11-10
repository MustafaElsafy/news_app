import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _drawHeader(),
            _drawTopStories(),
          ],
        ),
      ),
    );
  }

  Widget _drawHeader() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'How Terriers & Royals Gatecrashed Final',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sid do eiusmod.',
                style: TextStyle(color: Colors.grey.shade200),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawSectionTitle('Top Stories'),
          _drawSingleCard(),
          _drawSingleCard(),
          _drawSingleCard(),
        ],
      ),
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

  Widget _drawSectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
