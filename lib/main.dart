import 'package:flutter/material.dart';
import '../pages/HomePage.dart';
import '../pages/ImagePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Study',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MainPage(title: '과제'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _changeContentByIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _getContentByIndex(int index) {
    switch (index) {
      case 0:
        return HomePage(changeContentByIndex: _changeContentByIndex);
      case 1:
        return const ImagePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: _selectedIndex == 0
              ? null
              : IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () =>
                      _selectedIndex == 0 ? '' : _changeContentByIndex(0),
                )),
      body: _getContentByIndex(_selectedIndex),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            _changeContentByIndex(0);
          },
          child: Container(
              height: 55,
              color: Colors.blueGrey,
              child: Column(children: [Icon(Icons.home), Text('홈')]))),
      endDrawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              _changeContentByIndex(0);
            },
          ),
          ListTile(
            title: const Text('Image'),
            onTap: () {
              _changeContentByIndex(1);
            },
          ),
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
