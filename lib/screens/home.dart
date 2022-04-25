import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigationbar/screens/home_page.dart';

import 'chat_page.dart';
import 'feed_page.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    // _onTapped(index) {
    //   setState(() {
    //     _currentIndex = index;
    //   });
    // }

    List<Widget> screens = [
      HomePage(),
      FeedPage(),
      ChatPage(),
      ProfilePage(),

      // Center(
      //   child: Text(
      //     'Home',
      //     style: TextStyle(fontSize: 60),
      //   ),
      // ),
      // Center(
      //   child: Text(
      //     'Feed',
      //     style: TextStyle(fontSize: 60),
      //   ),
      // ),
      // Center(
      //   child: Text(
      //     'Chat',
      //     style: TextStyle(fontSize: 60),
      //   ),
      // ),
      // Center(
      //   child: Text(
      //     'Profile',
      //     style: TextStyle(fontSize: 60),
      //   ),
      // )
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          iconSize: 50,
          selectedFontSize: 25,
          unselectedFontSize: 16,
          showUnselectedLabels: false,
          currentIndex: _currentIndex,
          //onTap: _onTapped,
          onTap: (int index) => setState(() {
                _currentIndex = index;
              }),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Feed',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green,
            ),
          ]),
    );
  }
}
