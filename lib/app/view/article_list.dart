import 'package:flutter/material.dart';

import './article_detail.dart';
import '../model/articles.dart';

class ArticleListPage extends StatefulWidget {
  @override
  ArticleListState createState() => new ArticleListState();
}

class ArticleListState extends State<ArticleListPage> {
  @override
  Widget build(BuildContext context) {
    var lists = <Widget>[];

    ARTICLE_LIST.forEach((int key, Map<String, String> e) => lists.add(ListTile(
          leading: new Icon(Icons.pages),
          title: new Text(e['title']),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: ((context) => new ArticleDetailPage(key)),
                ));
          },
        )));
    final title = 'Basic List';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        body: new ListView(
          children: lists,
        ),
      ),
    );
  }
}
