import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';

class PourquoiCOne extends StatefulWidget {
  @override
  _PourquoiCOneState createState() => _PourquoiCOneState();
}

int action = 0;

class _PourquoiCOneState extends State<PourquoiCOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pourquoi ?'),
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
                          text: 'Pourquoi ?',
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
                            text: 'Flutter nous donne la possibilité de créer des applications pour iOS et Android (avec un seul code).',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: 'Mais, depuis sa création, Google a décidé que Flutter va être utiliser même pour:',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: ' - Le Web (Front-end).',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: ' - Le Desktop (Windows, macOS et Linux).',
                            textAlign: TextAlign.left,
                            color: gray,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SimpleText(
                            text: ' - Autres machines comme Raspberry Pi.',
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
