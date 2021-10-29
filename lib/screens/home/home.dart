// @dart=2.9
import 'package:flutter/material.dart';
import 'package:eduance/constants/colors.dart';
import 'package:eduance/models/chat.dart';
import 'package:eduance/screens/home/widget/emoji_text.dart';
import 'package:eduance/screens/home/widget/feature_course.dart';
import 'package:eduance/screens/home/widget/search_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    ListView(
      children: [
        const EmojiText(),
        const SearchInput(),
        FeatureCourse3(),
        FeatureCourse1(),
        FeatureCourse2(),
        FeatureCourse()
      ],
    ),
    MyHomePage(
      title: 'Chat',
    ),
    Text('Calender'),
    Text('idk'),
  ];

  void _onItenTap(int index) {
    setState(() {
      print(_selectedIndex);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: _builtBottomNavigationBar(),
    );
  }

  BottomNavigationBar _builtBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.only(bottom: 4),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: const Text(
                'Home',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            label: 'home'),
        const BottomNavigationBarItem(
            label: 'calendar', icon: Icon(Icons.chat_bubble_outline)),
        const BottomNavigationBarItem(
            label: 'bookmark', icon: Icon(Icons.bookmark_border_outlined)),
        const BottomNavigationBarItem(
            label: 'user', icon: Icon(Icons.supervised_user_circle_rounded)),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItenTap,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Hello Kiran!',
            style: TextStyle(fontSize: 16, color: kFontLight),
          )),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.circle_notifications_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: const BoxDecoration(
                      color: kAccent, shape: BoxShape.circle),
                ))
          ],
        )
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Chat();
  }
}
