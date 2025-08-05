import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goroutersample/route_constants.dart';

class AppFrameWidget extends StatefulWidget {
  final Widget child;

  final String title;

  const AppFrameWidget({super.key, required this.child, required this.title});

  @override
  State<AppFrameWidget> createState() => _AppFrameWidgetState();
}

class _AppFrameWidgetState extends State<AppFrameWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.goNamed(MyPage.home.toName);
        break;
      case 1:
        context.goNamed(MyPage.search.toName);
        break;
      case 2:
        context.goNamed(MyPage.settings.toName);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}
