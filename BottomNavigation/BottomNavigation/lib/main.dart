import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(NavigationDemo());

class NavigationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Demo'),
        ),
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.rss_feed, title: "rss"),
            TabItem(icon: Icons.search, title: "search"),
            TabItem(icon: Icons.home, title: "home"),
            TabItem(icon: Icons.save, title: "save"),
            TabItem(icon: Icons.exit_to_app, title: "exit"),
          ],
          initialActiveIndex: 2,
        ),
      ),
    );
  }
}
