import 'package:flutter/material.dart';
import 'package:flutterapp/shared_ui/navigation_drawer.dart';

class InstagramFeeds extends StatefulWidget {
  @override
  _InstagramFeedsState createState() => _InstagramFeedsState();
}

class _InstagramFeedsState extends State<InstagramFeeds> {
  TextStyle _hashTagStyle = TextStyle(color: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Instagram Feeds"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemBuilder: (context, position) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drawHeader(),
                  _drawTitle(),
                  _drawHashTags(),
                  _drawBody(),
                  _drawFooter(),
                ],
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: CircleAvatar(
                backgroundColor: Colors.orange.shade900,
                radius: 24,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Christina Meyers',
                  style: TextStyle(
                    color: Colors.grey.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Fri, 12 May 2017 • 14.30',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.grey.shade400,
            ),
            Transform.translate(
                offset: Offset(-12, 0),
                child: Text(
                  '25',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                )),
          ],
        ),
      ],
    );
  }

  Widget _drawTitle() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
      child: Text(
        'We also talk about the future of work as the robots',
        style: TextStyle(color: Colors.grey.shade900),
      ),
    );
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
              onPressed: () {},
              child: Text(
                '#advance',
                style: _hashTagStyle,
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                '#advance',
                style: _hashTagStyle,
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                '#advance',
                style: _hashTagStyle,
              )),
        ],
      ),
    );
  }

  Widget _drawBody() {
    return SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.25,
        child: Container(
          color: Colors.grey.shade400,
        ),
    );
  }

  Widget _drawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(onPressed: (){}, child: Text('10 OMMENTS'  ,style: _hashTagStyle,)),
        Row(
          children: <Widget>[
            FlatButton(onPressed: (){}, child: Text('SHARE' , style: _hashTagStyle,)),
            FlatButton(onPressed: (){}, child: Text('OPEN' , style: _hashTagStyle,)),
          ],
        ),
      ],
    );
  }
}