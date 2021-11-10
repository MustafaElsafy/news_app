import 'package:flutter/material.dart';
import 'package:flutterapp/screens/home_tabs/favourites.dart';
import 'package:flutterapp/screens/home_tabs/popular.dart';
import 'package:flutterapp/shared_ui/navigation_drawer.dart';
import 'home_tabs/whats_new.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopUpMenu { Help, About, Contact, Settings }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Explore'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search',
            onPressed: () {},
          ),
          _PopUpMenu(),
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

  Widget _PopUpMenu() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.About,
            child: Text('About'),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.Contact,
            child: Text('Contact'),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.Help,
            child: Text('Help'),
          ),
          PopupMenuItem<PopUpMenu>(
            value: PopUpMenu.Settings,
            child: Text('Settings'),
          ),
        ];
      },
      onSelected: (PopUpMenu menu) {},
      icon: Icon(Icons.more_vert),
    );
  }
}
