import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';
import 'package:presentation/main.dart';

class Couverture extends StatefulWidget {
  @override
  _CouvertureState createState() => _CouvertureState();
}

int action = 0;

class _CouvertureState extends State<Couverture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Couverture'),
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
                          child: Image(image: AssetImage('images/logo.png')),
                          order: 1,
                          action: action,
                          top: MediaQuery.of(context).size.height / 2 - 195,
                          left: offset,
                        ),
                        FadeUp(
                          child: SubTitleText(
                            text: 'Pourquoi et comment ?',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          order: 2,
                          action: action,
                          top: MediaQuery.of(context).size.height / 2 + 15,
                          left: offset,
                        ),
                        FadeUpBL(
                          child: SimpleText(
                              text: 'Yassine Latreche',
                              textAlign: TextAlign.left,
                              color: gray),
                          order: 3,
                          action: action,
                          bottom: offset / 2,
                          left: offset / 2,
                        ),
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
                  }),
                  child: Icon(Icons.navigate_before),
                ),
                FlatButton(
                  onPressed: () => setState(() {
                    action++;
                    if (action == 4) {
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
