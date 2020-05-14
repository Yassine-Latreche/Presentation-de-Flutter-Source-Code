import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';
import 'package:presentation/main.dart';

class Comment extends StatefulWidget {
  @override
  _CommentState createState() => _CommentState();
}

int action = 0;

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment ?'),
      ),
      drawer: NavigationDrawer(),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        FadeFromLeft(
                          child: TitleText(
                              text: 'Comment ?',
                              textAlign: TextAlign.left,
                              color: gray),
                          order: 1,
                          action: action,
                          top: MediaQuery.of(context).size.height / 2 - 100,
                          left: offset,
                        ),
                        FadeUpBL(
                          child: Image(
                            image: AssetImage('images/logo_small.png'),
                          ),
                          order: 1,
                          action: action,
                          bottom: offset / 2,
                          left: offset / 2,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height,
                    color: Color(fblue),
                    child: Stack(
                      children: <Widget>[
                        Center(
                            child: FadeAnimation(
                          child: Image(
                            image: AssetImage('images/image1.jpg'),
                          ),
                          order: 1,
                          action: action,
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => setState(() {
                    action--;
                    if (action == -1) {
                      Navigator.popAndPushNamed(context, '/'+(int.parse(ModalRoute.of(context).settings.name.substring(1))-1).toString());
                    }
                  }),
                  child: Icon(Icons.navigate_before),
                ),
                FlatButton(
                  onPressed: () => setState(() {
                    action++;
                    if (action == 2) {
                      Navigator.popAndPushNamed(context, '/'+(int.parse(ModalRoute.of(context).settings.name.substring(1))+1).toString());
                    }
                  }),
                  child: Icon(Icons.navigate_next),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
