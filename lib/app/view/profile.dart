import 'package:flutter/material.dart';
import './article_list.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfileState createState() => new ProfileState();
}

class ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.map),
          title: new Text('我的发布'),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: ((context) => new ArticleListPage()),
                ));
          },
        ),
        new ListTile(
          leading: new Icon(Icons.map),
          title: new Text('我的收藏'),
        ),
      ],
    );
  }
}
