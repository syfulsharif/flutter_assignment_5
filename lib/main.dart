import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const Assignment5App());

class Assignment5App extends StatelessWidget {
  const Assignment5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OstadBottomNavigationBar(),
    );
  }
}

class OstadBottomNavigationBar extends StatefulWidget {
  const OstadBottomNavigationBar({super.key});

  @override
  State<OstadBottomNavigationBar> createState() =>
      _OstadBottomNavigationBarState();
}

class _OstadBottomNavigationBarState extends State<OstadBottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle customStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = [
    // AssetImage('images/home.svg'),
    Text(
      'Page 1: Home',
      style: customStyle,
    ),
    Text(
      'Page 2: Services',
      style: customStyle,
    ),
    Text(
      'Page 3: Contact',
      style: customStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ostad Flutter Assignment 5'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        backgroundColor: Colors.teal.shade100,
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text('Ostad Assignment'),
            ),
            ListTile(
              title: Text('Home'),
            ),
            ListTile(
              title: Text('Services'),
            ),
            ListTile(
              title: Text('Contact'),
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal.shade300,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.design_services, color: Colors.white),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page, color: Colors.white,),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
