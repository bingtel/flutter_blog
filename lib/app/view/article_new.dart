import 'package:flutter/material.dart';
import '../model/articles.dart';


class NewArticlePage extends StatefulWidget {
  @override
  NewArticleState createState() => new NewArticleState();
}

class NewArticleState extends State<NewArticlePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('新建')),
        body: new Form(
          child: new TextField(
            onSubmitted: (str) {
              ARTICLE_LIST[ARTICLE_LIST.length + 1] = {
                'title': '${ARTICLE_LIST.length + 1}篇',
                'body': str
              };
              Navigator.pop(context);
            }
          ),
        ),
      );
  }
}
