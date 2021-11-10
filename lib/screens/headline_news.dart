import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_tabs/popular.dart';
import 'package:flutterapp/screens/home_tabs/whats_new.dart';
import 'package:flutterapp/shared_ui/navigation_drawer.dart';

import 'home_tabs/favourites.dart';
class HeadLineNews extends StatefulWidget {

  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Headline News'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            tooltip: 'more',
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              text: "WHAT'S NEW",
            ),
            Tab(
              text: "POPULAR",
            ),
            Tab(
              text: "FAVOURITES",
            )
          ],
          indicatorColor: Colors.white,
          controller: _tabController,
        ),
      ),
      body: Center(
        child: TabBarView(
          children: <Widget>[
            WhatsNew(),
            Popular(),
            Favourites(),
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationDrawer(),
    );
  }
}
