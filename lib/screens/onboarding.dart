import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages = new List<PageModel>();
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void addPages() {
    pages.add(PageModel(
        Icons.ac_unit,
        'Welcome!',
        '1- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/nature.jpg'));
    pages.add(PageModel(
        Icons.access_alarm,
        'Alarm',
        '2- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/nature2.jpg'));
    pages.add(PageModel(
        Icons.print,
        'Print',
        '3- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/nature3.jpg'));
    pages.add(PageModel(
        Icons.map,
        'Map',
        '4- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/nature4.jpg'));
  }

  @override
  Widget build(BuildContext context) {
    addPages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage(pages[index]._image),
                      fit: BoxFit.cover,
                      height: double.infinity,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index]._icon,
                          size: 100,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -75),
                      ),
                      Text(
                        pages[index]._title,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 12),
                        child: Text(
                          pages[index]._desc,
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
          ),
          Transform.translate(
            offset: Offset(0, 140),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20, left: 16, right: 16),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  color: Colors.red.shade700,
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 1),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageModel {
  IconData _icon;
  String _title;
  String _desc;
  String _image;

  PageModel(this._icon, this._title, this._desc, this._image);

  IconData get icon => _icon;

  String get title => _title;

  String get desc => _desc;

  String get image => _image;
}
