import 'package:flutter/material.dart';
import 'package:movie_app/constant.dart';

import 'navigation_screen_export.dart';

class NavigationScreens extends StatefulWidget {
  const NavigationScreens({Key? key}) : super(key: key);

  @override
  _NavigationScreensState createState() => _NavigationScreensState();
}

class _NavigationScreensState extends State<NavigationScreens> {
  final List<Widget> _screens = const [
    HomeScreen(),
    ExploreScreen(),
    DashboardScreen(),
    ProfileScreen(),
  ];
  // final Map<null,IconData> _icons = const {
  //   '': Icons.home,
  //   '': Icons.favorite,
  //   '': Icons.radio,
  //   'Playlist': Icons.playlist_add,
  //   'Profile': Icons.person
  // };
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: SizedBox(
          height: 60,
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: _currentIndex == 0
                        ? const Icon(Icons.home)
                        : const Icon(Icons.home_outlined),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: _currentIndex == 1
                        ? const Icon(Icons.explore)
                        : const Icon(Icons.explore_outlined),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: _currentIndex == 2
                        ? const Icon(Icons.dashboard)
                        : const Icon(Icons.dashboard_outlined),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: _currentIndex == 3
                        ? const Icon(Icons.people)
                        : const Icon(Icons.people_outlined),
                    label: '',
                  ),
                ],
                backgroundColor: kNavBackgroundColor,
                iconSize: 30,
                currentIndex: _currentIndex,
                selectedItemColor: kNavIconColor,
                selectedFontSize: 11,
                unselectedFontSize: 11,
                unselectedItemColor: kIconColor,
                onTap: (index) => setState(() => _currentIndex = index)),
          ),
        ),
      ),
    );
  }
}
