import 'package:flutter/material.dart';
import 'package:gdsc_project/Screens/info_screen.dart';
import 'package:gdsc_project/screens/authenticate/authenticate.dart';
import 'package:gdsc_project/screens/home/Taps/time_tab.dart';
import 'package:gdsc_project/screens/home/Taps/zone_tap.dart';
import 'package:gdsc_project/services/auth.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthService _auth = AuthService();

  int _selectedIndex = 0;
  static const _pages = <Widget>[
    TimeTab(),
    ZoneTab(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          elevation: 0.0,
          actions: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.logout),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Authenticate()));
              },
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromRGBO(33, 33, 33, .8),
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                ),
                accountName: const Text(
                  'Mohamed A. Mahdi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.white),
                ),
                accountEmail: const Text(
                  'Moh.Mahdi0548@Gmail.com',
                ),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InfoScreen()),
                    );
                  },
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/96599149?v=4'),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          elevation: 0.0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Time'),
            BottomNavigationBarItem(icon: Icon(Icons.public), label: 'Zones')
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          iconSize: 22,
          unselectedItemColor: Colors.grey[700],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
