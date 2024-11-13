import 'dart:math';

import 'package:fin_tracker_app/pages/todo_page/todo_page_connector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'stats_page/stats_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController(keepPage: true);
  int _selected = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          TodoPageConnector(),
          StatsPage(),
          // AccountsScreen(),
          // CategoriesScreen(),
          // SettingsScreen()
        ],
        onPageChanged: (int index) {
          setState(() {
            _selected = index;
          });
        },
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selected,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          elevation: 3,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                fill: 1,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.graph_square_fill,
                fill: 1,
              ),
              label: "Stats",
            ),
          ],
          onTap: (int selected) {
            _controller.jumpToPage(selected);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // onPressed: saveNewTask,
        shape: CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary,
              ],
              transform: const GradientRotation(pi / 4),
            ),
          ),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
