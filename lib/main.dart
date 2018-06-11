import 'package:flutter/material.dart';
import './app/view/article_list.dart';
import './app/view/article_new.dart';
import './app/view/profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: new HomePage(title: '小段子'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 0;
  void _pageChange(int index) {
    setState(() {
      _currentPageIndex =
          (_currentPageIndex != index) ? index : _currentPageIndex;
    });
  }

  StatefulWidget _getPageByIndex() {
    if (_currentPageIndex == 0) {
      return ArticleListPage();
    }
    if (_currentPageIndex == 1) {
      return ProfilePage();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: _getPageByIndex(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                builder: ((context) => new NewArticlePage()),
              ));
        },
        mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.list), title: new Text("文章")),
            BottomNavigationBarItem(
                icon: new Icon(Icons.person), title: new Text("我的")),
          ],
          iconSize: 24.0,
          currentIndex: _currentPageIndex,
          onTap: (int index) => _pageChange(index)),
    );
  }
}
