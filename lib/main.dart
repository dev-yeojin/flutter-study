import 'package:flutter/material.dart';
import '../pages/HomePage.dart';
import '../pages/ImagePage.dart';
import '../pages/NameCard.dart';

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
  var historyBackArr = [0];
  int _selectedIndex = 0;

  void back() {
    int historyLength = historyBackArr.length;
    if (historyLength == 1) return;
    int prevIndex = historyBackArr[historyLength - 2];

    historyBackArr.removeRange(historyLength - 2, historyLength);
    _changeContentByIndex(prevIndex, back:true);
  }

  void _changeContentByIndex(int index, {bool back = false}) {
    setState(() {
      _selectedIndex = index;
    });
    back ? '' : historyBackArr.add(index);
  }

  _getContentByIndex(int index) {
    switch (index) {
      case 0:
        return HomePage(changeContentByIndex: _changeContentByIndex);
      case 1:
        return const ImagePage();
      case 2:
        return const NameCard();
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
              icon: Icon(Icons.arrow_back), onPressed: () => back())),
      body: _getContentByIndex(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _changeContentByIndex(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.photo_camera), label: '이미지'),
          BottomNavigationBarItem(icon: Icon(Icons.badge), label: '명함'),
        ],
      ),
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
              ListTile(
                title: const Text('List'),
                onTap: () {
                  _changeContentByIndex(2);
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
