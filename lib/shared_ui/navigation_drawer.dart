import 'package:flutter/material.dart';
import 'package:flutterapp/models/nav_menu.dart';
import 'package:flutterapp/screens/facebook_feeds.dart';
import 'package:flutterapp/screens/headline_news.dart';
import 'package:flutterapp/screens/home_screen.dart';
import 'package:flutterapp/screens/instagram_feeds.dart';
import 'package:flutterapp/screens/twitter_feeds.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigationMenu = [
    NavMenuItem('Explore', () => HomeScreen()),
    NavMenuItem('Headline News', () {
      return HeadLineNews();
    }),
    NavMenuItem('Twitter Feeds', () => TwitterFeeds()),
    NavMenuItem('Instagram Feeds', () => InstagramFeeds()),
    NavMenuItem('Facebook Feeds', () => FacebookFeeds()),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 25),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return ListTile(
              title: Text(
                navigationMenu[position].title,
                style: TextStyle(fontSize: 17, color: Colors.grey.shade700),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade500,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        navigationMenu[position].destination(),
                  ),
                );
              },
            );
          },
          itemCount: navigationMenu.length,
        ),
      ),
    );
  }
}
