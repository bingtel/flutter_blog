import 'package:flutter/material.dart';

import '../model/articles.dart';

class ArticleDetailPage extends StatefulWidget {
  final id;
  ArticleDetailPage(this.id) {}

  @override
  ArticleDetailState createState() => new ArticleDetailState(id);
}

class ArticleDetailState extends State<ArticleDetailPage> {
  final id;
  ArticleDetailState(this.id) {}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text(ARTICLE_LIST[id]['title'])),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[new Text(ARTICLE_LIST[id]['body'])],
          )
        ));
  }
}
