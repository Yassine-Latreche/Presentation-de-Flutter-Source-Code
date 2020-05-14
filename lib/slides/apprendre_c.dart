import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';

class ApprendreC extends StatefulWidget {
  @override
  _ApprendreCState createState() => _ApprendreCState();
}

int action = 0;

class _ApprendreCState extends State<ApprendreC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apprendre'),
      ),
      drawer: NavigationDrawer(),
      body: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Color(white),
                child: Stack(
                  children: <Widget>[
                    FadeFromLeft(
                      child: SubTitleText(
                          text: 'Apprendre',
                          textAlign: TextAlign.left,
                          color: gray),
                      order: 1,
                      action: action,
                      top: offset,
                      left: offset,
                    ),
                    FadeUp(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SimpleText(
                            text: 'Documentation: https://flutter.dev/docs',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text:
                                'La Chaîne YouTube "Flutter".',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text:
                                'La Chaîne YouTube "The Net Ninja".',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                        ],
                      ),
                      order: 2,
                      action: action,
                      top: offset * 2 + 50,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => setState(() {
                    action--;
                    if (action == -1) {
                      Navigator.popAndPushNamed(
                          context,
                          '/' +
                              (int.parse(ModalRoute.of(context)
                                          .settings
                                          .name
                                          .substring(1)) -
                                      1)
                                  .toString());
                    }
                  }),
                  child: Icon(Icons.navigate_before),
                ),
                FlatButton(
                  onPressed: () => setState(() {
                    action++;
                    if (action == 3) {
                      Navigator.popAndPushNamed(
                          context,
                          '/' +
                              (int.parse(ModalRoute.of(context)
                                          .settings
                                          .name
                                          .substring(1)) +
                                      1)
                                  .toString());
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
